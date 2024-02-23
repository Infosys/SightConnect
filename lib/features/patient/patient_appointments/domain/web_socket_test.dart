import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:flutter/material.dart';

var webSocketProvider = ChangeNotifierProvider((ref) => WebSocketProvider());

class WebSocketProvider extends ChangeNotifier {
  final _channel =
      WebSocketChannel.connect(Uri.parse('wss://echo.websocket.org'));
  String _message = '';

  WebSocketProvider() {
    _channel.stream.listen((event) {
      _message = event;
      notifyListeners();
    });
  }

  String get message => _message;

  void sendMessage(String text) {
    _channel.sink.add(text);
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
                child: Text(
                  channel._message,
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
              channel.sendMessage(_controller.text);
            },
          ),
        ],
      ),
    );
  }
}
