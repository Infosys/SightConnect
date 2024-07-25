import 'package:dynamic_form/shared/utlities/responsive.dart';
import 'package:dynamic_form/widgets/form_check_box.dart';
import 'package:dynamic_form/widgets/form_chips.dart';
import 'package:dynamic_form/widgets/form_file.dart';
import 'package:dynamic_form/widgets/form_radio.dart';
import 'package:dynamic_form/widgets/form_switch.dart';
import 'package:dynamic_form/widgets/form_text_area.dart';
import 'package:flutter/material.dart';

class AppResponsiveWidget extends StatelessWidget {
  final Widget widget;

  const AppResponsiveWidget({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive.isMobile(context)
          ? double.infinity
          : widget is FormCheckbox ||
                  widget is FormFile ||
                  widget is FormSwitch ||
                  widget is FormRadio ||
                  widget is FormTextArea ||
                  widget is FormChip
              ? MediaQuery.of(context).size.width * 0.9 + 32
              : MediaQuery.of(context).size.width * 0.3,
      child: widget,
    );
  }
}
