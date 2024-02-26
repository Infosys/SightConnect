import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
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
    ChangeNotifierProvider.autoDispose((ref) => PatientAppointmentRemoteSource(
          ref.watch(appointmentDioProvider),
        ));

class PatientAppointmentRemoteSource extends ChangeNotifier {
  Dio dio;

  PatientAppointmentRemoteSource(
    this.dio,
  ) {
    initializeStompClient();
  }

  late StompClient _client;
  bool _isConnected = false;
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

  Future<bool> isAck() async {
    bool isDataAck = false;
    _client.subscribe(
      destination: '',
      callback: (StompFrame frame) {
        if (frame.command == 'ACK') {
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
        doctorsList =
            (data as List).map((e) => EuaOnSearchModel.fromJson(e)).toList();
        logger.d('Received: ${frame.body}');
        notifyListeners();
      },
    );
    bool isDataAck = await isAck();
    return doctorsList;
  }

  Future test() async {
    var endpoint = '';
    var a = {
      "context": {
        "domain": "BOOKING_APP",
        "country": "IND",
        "city": "std:011",
        "action": "search",
        "core_version": "0.7.1",
        "consumer_id": "eua-nha",
        "consumer_uri":
            "http://localhost:8901/services/eua-client/api/v1/euaService",
        "message_id": "dfa04e10-63ec-11ed-9f98-49dd5c7c4d8a",
        "timestamp": "2022-11-14T07:20:54.005277Z",
        "transaction_id": "dfa04e10-63ec-11ed-9f98-49dd5c7c4d8a"
      },
      "message": {
        "intent": {
          "fulfillment": {
            "agent": {"id": "ganeshborse@hpr.ndhm"},
            "start": {
              "time": {"timestamp": "2022-07-22T13:21:41"}
            },
            "end": {
              "time": {"timestamp": "2022-07-22T23:59:59"}
            },
            "type": "Teleconsultation"
          },
          "item": {
            "descriptor": {"code": "Consultation", "name": "Consultation"}
          }
        }
      }
    };

    try {
      var response = await dio.post(endpoint, data: a.toString());
      logger.d(response.data);
      if (response.statusCode == 200) {
        logger.d("sent data successfully");
      }
    } on DioException catch (e) {
      logger.f(e);
    }

    // return response;
  }

  Future<bool> sendAppointmentDetails(UhiSearchModel uhiSearchModel) async {
    logger.d("inside send details method");
    try {
      if (isConnected) {
        logger.d("inside send details method and is connected");
        var data = jsonEncode(uhiSearchModel.toJson());
        _client.send(
          destination: '/eua/messages',
          body:
              '{"context":{ "domain": "BOOKING_APP", "country": "IND", "city": "std:011", "action": "search", "core_version": "0.7.1", "consumer_id": "eua-nha", "consumer_uri": "http://localhost:8901/services/eua-client/api/v1/euaService", "message_id": "dfa04e10-63ec-11ed-9f98-49dd5c7c4d8a", "timestamp": "2022-11-14T07:20:54.005277Z", "transaction_id": "dfa04e10-63ec-11ed-9f98-49dd5c7c4d8a" }, "message": { "intent": { "fulfillment": { "agent": { "id": "ganeshborse@hpr.ndhm" }, "start": { "time": { "timestamp": "2022-07-22T13:21:41" } }, "end": { "time": { "timestamp": "2022-07-22T23:59:59" } }, "type": "Teleconsultation" }, "item": { "descriptor": { "code": "Consultation", "name": "Consultation" } } } } }',
        );
      }
    } on DioException catch (e) {
      logger.f(e);
    }
    bool isDataAck = await isAck();
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
