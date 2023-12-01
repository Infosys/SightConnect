import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CustomSwitch extends HookWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    var state = useState(true);

    return Switch(
      // thumbIcon: thumbIcon,
      // trackOutlineWidth: 20,
      value: state.value,
      focusColor: Colors.red,
      activeColor: AppColor.primary,
      onChanged: (bool value) {
        state.value = value;
      },
    );
  }
}
