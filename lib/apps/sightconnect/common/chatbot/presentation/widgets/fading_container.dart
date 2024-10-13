/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'dart:async';

import 'package:flutter/material.dart';

class FadingContainer extends StatefulWidget {
  const FadingContainer({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 750),
    this.offset = Duration.zero,
    this.highestOpacity = 1.0,
    this.lowestOpacity = 0.5,
  });

  final Widget child;
  final Duration duration;
  final Duration offset;
  final double highestOpacity;
  final double lowestOpacity;

  @override
  _FadingContainerState createState() => _FadingContainerState();
}

class _FadingContainerState extends State<FadingContainer> {
  bool _isVisible = true;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _initPeriodicTimer();
  }

  Future<void> _initPeriodicTimer() async {
    // Start the timer to toggle the visibility every 2 seconds
    await Future.delayed(widget.offset);
    _timer = Timer.periodic(widget.duration, (_) {
      setState(() {
        _isVisible = !_isVisible;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _isVisible ? widget.highestOpacity : widget.lowestOpacity,
      duration: widget.duration, // Animation duration
      child: widget.child,
    );
  }
}
