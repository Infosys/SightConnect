/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';

class ChatMessageComposer extends StatefulWidget {
  const ChatMessageComposer({
    super.key,
    required this.selectedLanguage,
    required this.enabled,
    required this.onTextChange,
    required this.onSubmit,
  });

  final String selectedLanguage;
  final bool enabled;
  final void Function(String) onTextChange;
  final void Function(String) onSubmit;

  @override
  State<ChatMessageComposer> createState() => _ChatMessageComposerState();
}

class _ChatMessageComposerState extends State<ChatMessageComposer> {
  final TextEditingController _textEditingController = TextEditingController();
  bool _isListening = false;
  bool _isListenerAvailable = false;
  final _speechToText = SpeechToText();

  @override
  void initState() {
    _speechToText.initialize(
      onStatus: (status) {
        switch (status) {
          case "listening":
            setState(() {
              _isListening = true;
            });
            break;
          case "notListening":
          case "done":
            setState(() {
              _isListening = false;
            });
            break;
          default:
            break;
        }
      },
    ).then((value) {
      logger.d("Listener Available: $value");
      setState(() {
        _isListenerAvailable = value;
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final loc = context.loc!;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black45),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.only(
        left: 12,
        top: 4,
        bottom: 4,
      ),
      // margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              enabled: widget.enabled,
              controller: _textEditingController,
              onChanged: (value) {
                // Pre
                widget.onTextChange(value);
              },
              onSubmitted: (_) => _submitHandler(),
              decoration: InputDecoration(
                hintText: "loc.chatTypeHere",
                border: InputBorder.none,
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.mic,
                        color: _isListening ? Colors.blue : Colors.blueGrey,
                        size: _isListening ? 32 : 24,
                      ),
                      onPressed: _isListenerAvailable
                          ? (_isListening
                              ? _microphoneOffHandler
                              : _microphoneOnHandler)
                          : null,
                    ),
                    IconButton(
                      onPressed: () => _submitHandler(),
                      icon: const Icon(Icons.send),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _submitHandler() {
    if (_textEditingController.text.isEmpty) return;
    widget.onSubmit(
      _textEditingController.text,
    );
    _textEditingController.clear();
  }

  void _microphoneOnHandler() {
    if (!_isListenerAvailable) return;
    setState(() {
      _isListening = true;
    });
    logger.d('Listening...');
    _speechToText.listen(
      onResult: (result) async {
        setState(() {
          _textEditingController.text = result.recognizedWords;
        });
        // translateText(result.recognizedWords);
      },
      localeId: widget.selectedLanguage,
    );
  }

  void _microphoneOffHandler() {
    setState(() {
      _isListening = false;
    });
    _speechToText.stop();
    logger.d('Stopped Listening!');
  }
}
