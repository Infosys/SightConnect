import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CustomSwitch extends HookWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    var state = useState<bool>(false);

    return CupertinoSwitch(
      value: state.value,
      activeColor: AppColor.primary,
      onChanged: (bool value) {
        state.value = value;
      },
    );
  }
}
