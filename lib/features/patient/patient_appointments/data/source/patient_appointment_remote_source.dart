import 'dart:convert';

import 'package:eye_care_for_all/features/patient/patient_appointments/data/models/eua_on_search_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stomp_dart_client/stomp.dart';
import 'package:stomp_dart_client/stomp_config.dart';
import 'package:stomp_dart_client/stomp_frame.dart';
import '../../../../../core/constants/api_constant.dart';
import '../../../../../main.dart';
import '../models/uhi_search_model.dart';

var appointmentRemoteSourceProvider =
    ChangeNotifierProvider((ref) => PatientAppointmentRemoteSource());

class PatientAppointmentRemoteSource extends ChangeNotifier {
  late StompClient _client;
  late bool _isConnected;
  late List<EuaOnSearchModel> doctorsList;
  bool get isConnected => _isConnected;

  void initializeStompClient() {
    _client = StompClient(
      config: StompConfig(
        url: ApiConstant.webSocketEua,
        onConnect: onConnectCallback,
        onWebSocketError: (dynamic error) =>
            logger.e("onWebSocketError : $error"),
        onStompError: (StompFrame frame) => logger.e("onStompError : $frame"),
        onDisconnect: (StompFrame frame) => logger.e("onDisconnect called"),
      ),
    );
    _client.activate();
  }

  void onConnectCallback(StompFrame connectFrame) {
    logger.d("WebSocket connection is Established");
    _isConnected = true;
    notifyListeners();
  }

  bool isAck(){
    bool isDataAck = false;
    _client.subscribe(
      destination: '',
      callback: (StompFrame frame) {
        if(frame.command == 'ACK'){
          isDataAck = true;
        }
      },
    );
    return isDataAck;
  }

  Future<List<EuaOnSearchModel>> getDoctorsList() async {
    logger.d('Connected to the broker');
    _client.subscribe(
      destination: '/topic/return',
      callback: (StompFrame frame) {
        var data = jsonDecode(frame.body!);
        doctorsList = (data as List)
            .map((e) => EuaOnSearchModel.fromJson(e))
            .toList();
        logger.d('Received: ${frame.body}');
        notifyListeners();
      },
    );
    return doctorsList;
  }

  Future<bool> sendAppointmentDetails(UhiSearchModel uhiSearchModel) async {
    var data = jsonEncode(uhiSearchModel.toJson());
    _client.send(
      destination: '/eua/messages',
      body: data.toString(),
    );
    bool isDataAck = isAck();
    return isDataAck;
  }
  
}

// '{"context":{ "domain": "BOOKING_APP", "country": "IND", "city": 
//"std:011", "action": "search", "core_version": "0.7.1",
// "consumer_id": "eua-nha", "consumer_uri": "http://localhost:8901/services/eua-client/api/v1/euaService", 
//"message_id": "dfa04e10-63ec-11ed-9f98-49dd5c7c4d8a", 
//"timestamp": "2022-11-14T07:20:54.005277Z", 
//"transaction_id": "dfa04e10-63ec-11ed-9f98-49dd5c7c4d8a" }, 
//"message": { "intent": { "fulfillment": { "agent": { "id": "ganeshborse@hpr.ndhm" }, 
//"start": { "time": { "timestamp": "2022-07-22T13:21:41" } }, 
//"end": { "time": { "timestamp": "2022-07-22T23:59:59" } }, 
//"type": "Teleconsultation" }, "item": { "descriptor": { "code": "Consultation",
// "name": "Consultation" } } } } }'
