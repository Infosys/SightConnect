/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppSwitchField extends HookWidget {
  const AppSwitchField(
    this.title, {
    super.key,
    required this.isSelected,
  });
  final Function(bool) isSelected;
  final String title;
  @override
  Widget build(BuildContext context) {
    final selectedValue = useState<bool>(false);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: applyFiraSansFont(fontSize: 16),
            ),
          ),
          CupertinoSwitch(
            value: selectedValue.value,
            onChanged: (value) {
              selectedValue.value = value;
            },
          ),
        ],
      ),
    );
  }
}
