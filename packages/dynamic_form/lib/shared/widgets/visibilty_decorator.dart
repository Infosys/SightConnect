import 'package:flutter/material.dart';

abstract class FormWidget {
  Widget build(BuildContext context);
}

class VisibilityDecorator implements FormWidget {
  final FormWidget formWidget;
  final bool visible;

  VisibilityDecorator({
    required this.formWidget,
    required this.visible,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: formWidget.build(context),
    );
  }
}
