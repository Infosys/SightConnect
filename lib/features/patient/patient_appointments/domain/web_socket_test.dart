import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/env.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stomp_dart_client/stomp.dart';
import 'package:stomp_dart_client/stomp_config.dart';
import 'package:stomp_dart_client/stomp_frame.dart';

import '../../../../main.dart';

var webSocketProvider = ChangeNotifierProvider((ref) => WebSocketProvider());

class WebSocketProvider extends ChangeNotifier {
  WebSocketProvider() {
    initializeStompClient();
  }
  late StompClient _client;
  late bool _isConnected;
  bool get isConnected => _isConnected;

  void initializeStompClient() {
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
  }

  void onConnectCallback(StompFrame connectFrame) {
    logger.d("WebSocket connection is Established");
    _isConnected = true;
    notifyListeners();
  }

  void subscribe(String destination, Function callback) {
    logger.d('Connected to the broker');

    _client.subscribe(
      destination: '/topic/return',
      callback: (StompFrame frame) {
        logger.d('Received: ${frame.body}');
        notifyListeners();
      },
    );
  }

  void sendMessage() {
    _client.send(
      destination: '/eua/messages',
      body:
          '{"context":{ "domain": "BOOKING_APP", "country": "IND", "city": "std:011", "action": "search", "core_version": "0.7.1", "consumer_id": "eua-nha", "consumer_uri": "http://localhost:8901/services/eua-client/api/v1/euaService", "message_id": "dfa04e10-63ec-11ed-9f98-49dd5c7c4d8a", "timestamp": "2022-11-14T07:20:54.005277Z", "transaction_id": "dfa04e10-63ec-11ed-9f98-49dd5c7c4d8a" }, "message": { "intent": { "fulfillment": { "agent": { "id": "ganeshborse@hpr.ndhm" }, "start": { "time": { "timestamp": "2022-07-22T13:21:41" } }, "end": { "time": { "timestamp": "2022-07-22T23:59:59" } }, "type": "Teleconsultation" }, "item": { "descriptor": { "code": "Consultation", "name": "Consultation" } } } } }',
      // Add headers if needed
    );
  }

  @override
  void dispose() {
    _client.deactivate();
    super.dispose();
  }
}

class WebSocket extends ConsumerWidget {
  WebSocket({super.key});

  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var channel = ref.watch(webSocketProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('WebSocket Example'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Form(
            child: TextFormField(
              controller: _controller,
              decoration: const InputDecoration(labelText: 'Send a message'),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              const Text("The Text from Web Socket is  : "),
              Container(
                color: AppColor.altGreen,
                child: const Text(
                  "",
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            child: const Text('Send Message'),
            onPressed: () {
              channel.sendMessage();
            },
          ),
        ],
      ),
    );
  }
}
