/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:flutter/material.dart';

class Pulsar extends StatefulWidget {
  const Pulsar({
    required this.child,
    this.animationCurve = Curves.easeInOut,
    this.lowOpacity = 0.7,
    this.highOpacity = 1,
    this.disable = false,
    this.pulsePeriod = const Duration(milliseconds: 800),
    Key? key,
  })  : assert(lowOpacity <= highOpacity &&
            lowOpacity >= 0.0 &&
            lowOpacity <= 1.0 &&
            highOpacity >= 0.0 &&
            highOpacity <= 1.0),
        super(key: key);

  final Widget child;
  final double lowOpacity;
  final double highOpacity;
  final Duration pulsePeriod;
  final Curve animationCurve;
  final bool disable;

  @override
  PulsarState createState() => PulsarState();
}

class PulsarState extends State<Pulsar> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    initAndStartAnimation();
  }

  @override
  void didUpdateWidget(covariant Pulsar oldWidget) {
    super.didUpdateWidget(oldWidget);
    initAndStartAnimation();
  }

  void initAndStartAnimation() {
    _controller.stop(canceled: true);
    _opacityAnimation =
        Tween<double>(begin: widget.lowOpacity, end: widget.highOpacity)
            .animate(
      CurvedAnimation(parent: _controller, curve: widget.animationCurve),
    );
    _controller
        .repeat(
          reverse: true,
          period: widget.pulsePeriod,
        )
        .orCancel
        .catchError((_) {});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.disable) {
      return widget.child;
    }
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) => Opacity(
        opacity: _opacityAnimation.value,
        child: widget.child,
      ),
    );
  }
}
