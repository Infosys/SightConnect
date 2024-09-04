// import 'package:eye_care_for_all/env.dart';
// import 'package:eye_care_for_all/shared/constants/app_color.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:stomp_dart_client/stomp.dart';
// import 'package:stomp_dart_client/stomp_config.dart';
// import 'package:stomp_dart_client/stomp_frame.dart';

// import '../../../../../../main.dart';

// var webSocketProvider = ChangeNotifierProvider((ref) => WebSocketProvider());

// class WebSocketProvider extends ChangeNotifier {
//   WebSocketProvider() {
//     initializeStompClient();
//   }
//   late StompClient _client;
//   late bool _isConnected;
//   bool get isConnected => _isConnected;

//   void initializeStompClient() {
//     _client = StompClient(
//       config: StompConfig(
//         url: Env.websocketUrl,
//         onConnect: onConnectCallback,
//         onWebSocketError: (dynamic error) =>
//             logger.e("onWebSocketError : $error"),
//         onStompError: (StompFrame frame) => logger.e("onStompError : $frame"),
//         onDisconnect: (StompFrame frame) => logger.e("onDisconnect called"),
//       ),
//     );
//     _client.activate();
//   }

//   void onConnectCallback(StompFrame connectFrame) {
//     logger.d("WebSocket connection is Established");
//     _isConnected = true;
//     notifyListeners();
//   }

//   void subscribe(String destination, Function callback) {
//     logger.d('Connected to the broker');

//     _client.subscribe(
//       destination: '/topic/return',
//       callback: (StompFrame frame) {
//         logger.d('Received: ${frame.body}');
//         notifyListeners();
//       },
//     );
//   }

//   void sendMessage() {
//     _client.send(
//       destination: '/eua/messages',
//       body:
// ""      // Add headers if needed
//     );
//   }

//   @override
//   void dispose() {
//     _client.deactivate();
//     super.dispose();
//   }
// }

// class WebSocket extends ConsumerWidget {
//   WebSocket({super.key});

//   final TextEditingController _controller = TextEditingController();
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     var channel = ref.watch(webSocketProvider);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('WebSocket Example'),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Form(
//             child: TextFormField(
//               controller: _controller,
//               decoration: const InputDecoration(labelText: 'Send a message'),
//             ),
//           ),
//           const SizedBox(height: 24),
//           Row(
//             children: [
//               const Text("The Text from Web Socket is  : "),
//               Container(
//                 color: AppColor.altGreen,
//                 child: const Text(
//                   "",
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 40,
//           ),
//           ElevatedButton(
//             child: const Text('Send Message'),
//             onPressed: () {
//               channel.sendMessage();
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
