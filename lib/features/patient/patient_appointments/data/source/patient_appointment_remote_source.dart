import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/env.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/data/models/eua_on_search_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stomp_dart_client/stomp.dart';
import 'package:stomp_dart_client/stomp_config.dart';
import 'package:stomp_dart_client/stomp_frame.dart';

import '../../../../../main.dart';
import '../models/uhi_search_model.dart';

var appointmentRemoteSourceProvider =
    ChangeNotifierProvider((ref) => PatientAppointmentRemoteSource(
          ref.watch(appointmentDioProvider),
        ));

class PatientAppointmentRemoteSource extends ChangeNotifier {
  Dio dio;

  PatientAppointmentRemoteSource(
    this.dio,
  );

  late StompClient _client;
  bool _isConnected = false;
  EuaOnSearchModel? doctorsList;

  bool isDoctorData = false;
  bool get isConnected => _isConnected;
  EuaOnSearchModel? testDoctordata;
  final StreamController<EuaOnSearchModel> _streamController =
      StreamController<EuaOnSearchModel>.broadcast();

  Stream get doctorStream => _streamController.stream;

  Future<void> initializeStompClient() async {
    logger.d("inside initializeStompClient");
    _client = StompClient(
      config: StompConfig(
        url: Env.websocketUrl,
        onConnect: onConnectCallback,
        onWebSocketError: (dynamic error) =>
            logger.e("onWebSocketError : $error"),
        onStompError: (StompFrame frame) => logger.e("onStompError : $frame"),
        onDisconnect: (StompFrame frame) => logger.e("onDisconnect called"),
      ),
    );
    _client.activate();
    if (_client.isActive) {
      logger.d("client is active");
    }
  }

  onConnectCallback(StompFrame connectFrame) {
    logger.d("WebSocket connection is Established");
    _isConnected = true;
    notifyListeners();

    if (_client.isActive) {
      getDoctorsList();
    }
  }

  Future<EuaOnSearchModel?> getAppointmentDetails() async {
    return doctorsList;
  }

  void getDoctorsList() async {
    logger.d('Connected to the broker');
    _client.subscribe(
      destination: '/topic/return',
      callback: getDoctorosData,
    );
    notifyListeners();
    // logger.e('Received data from Eua: ${doctorsList.toString()}');
  }

  void getDoctorosData(StompFrame frame) {
    doctorsList = EuaOnSearchModel.fromJson(jsonDecode(frame.body!));
    isDoctorData = true;
    _streamController.add(doctorsList!);
    // doctorsList =
    //     (data as List).map((e) => EuaOnSearchModel.fromJson(e)).toList();

    notifyListeners();
  }

  Future<bool> sendAppointmentDetails(UhiSearchModel uhiSearchModel) async {
    logger.d("send appointment called from source");
    var endpoint = '/services/eua-service/api/v1/euaService/search-redirect';
    try {
      var response = await dio.post(endpoint, data: jsonEncode(uhiSearchModel));
      if (response.statusCode == 200) {
        logger.d("sent data successfully");
        var jsonResponse = response.data;
        var status = jsonResponse['message']['ack']['status'];
        if (status == 'ACK') {
          logger.d('Response has status ACK');
          return true;
        } else {
          logger.e('Response has status NACK');
          return false;
        }
      }
    } on DioException catch (e) {
      logger.d(e);
    }

    return false;
  }
}


 






//  var a = {
//       "context": {
//         "domain": "BOOKING_APP",
//         "country": "IND",
//         "city": "std:011",
//         "action": "search",
//         "core_version": "0.7.1",
//         "consumer_id": "eua-nha",
//         "consumer_uri":
//             "https://eyecare4all-dev.infosysapps.com/services/eua-service/api/v1/euaService",
//         "message_id": "dfa04e10-63ec-11ed-9f98-49dd5c7c4d8a",
//         "timestamp": "2022-11-14T07:20:54.005277Z",
//         "transaction_id": "dfa04e10-63ec-11ed-9f98-49dd5c7c4d8a"
//       },
//       "message": {
//         "intent": {
//           "fulfillment": {
//             "agent": {"id": "ganeshborse@hpr.ndhm"},
//             "start": {
//               "time": {"timestamp": "2022-07-22T13:21:41"}
//             },
//             "end": {
//               "time": {"timestamp": "2022-07-22T23:59:59"}
//             },
//             "type": "Teleconsultation"
//           },
//           "item": {
//             "descriptor": {"code": "Consultation", "name": "Consultation"}
//           }
//         }
//       }
//     };




// //   Future<bool> sendAppointmentDetails(UhiSearchModel uhiSearchModel) async {
// //     logger.d("inside send details method");
//     try {
//       if (isConnected) {
//         logger.d("inside send details method and is connected");
//         var data = jsonEncode(uhiSearchModel.toJson());
//         _client.send(
//           destination: '/eua/messages',
//           body:
//               '{"context":{ "domain": "BOOKING_APP", "country": "IND", "city": "std:011", "action": "search", "core_version": "0.7.1", "consumer_id": "eua-nha", "consumer_uri": "http://localhost:8901/services/eua-client/api/v1/euaService", "message_id": "dfa04e10-63ec-11ed-9f98-49dd5c7c4d8a", "timestamp": "2022-11-14T07:20:54.005277Z", "transaction_id": "dfa04e10-63ec-11ed-9f98-49dd5c7c4d8a" }, "message": { "intent": { "fulfillment": { "agent": { "id": "ganeshborse@hpr.ndhm" }, "start": { "time": { "timestamp": "2022-07-22T13:21:41" } }, "end": { "time": { "timestamp": "2022-07-22T23:59:59" } }, "type": "Teleconsultation" }, "item": { "descriptor": { "code": "Consultation", "name": "Consultation" } } } } }',
//         );
//       }
//     } on DioException catch (e) {
//       logger.d(e);
//     }
//     bool isDataAck = await isAck();
//     return isDataAck;
//   }