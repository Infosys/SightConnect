import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

var appointmentRemoteSourceProvider =
    Provider((ref) => PatientAppointmentRemoteSource());

class PatientAppointmentRemoteSource {
  final _channel =
      WebSocketChannel.connect(Uri.parse('wss://echo.websocket.org'));

  void sendAppointmentRequest(dynamic data) {
    _channel.sink.add(data);
    _channel.stream.listen((event) {
      Map<String, dynamic> json = jsonDecode(event);
      if (json['message']['ack']['status'] == 'ACK') {
        Fluttertoast.showToast(msg: "Success");
      } else {
        Fluttertoast.showToast(msg: "Failed");
      }
    }).onError((error) {
      Fluttertoast.showToast(msg: "Failed");
    });
  }

  dynamic getAppointmentResponse() {
    _channel.stream.listen((event) {
      final eventData = jsonDecode(event);
      return eventData;
    });
  }

  // WebSocketProvider() {
  //   _channel.stream.listen((event) {});
  // }

  // void sendMessage(String text) {
  //   _channel.sink.add(text);
  // }
}
