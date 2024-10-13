/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

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
