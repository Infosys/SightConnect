/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PreliminaryAssessmentIvrCall extends HookWidget {
  final Future Function(String) onSelectedOptionChanged;
  final String intialValue;

  const PreliminaryAssessmentIvrCall({
    super.key,
    required this.onSelectedOptionChanged,
    required this.intialValue,
  });

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);
    return Container(
      width: AppSize.width(context),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(AppSize.km),
        boxShadow: applycustomShadow(),
      ),
      padding: const EdgeInsets.all(AppSize.kl),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Are you on IVR Call?",
            style: applyFiraSansFont(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSize.ks),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Radio(
                value: "Yes",
                groupValue: intialValue,
                onChanged: (value) async {
                  if (isLoading.value) return;
                  isLoading.value = true;
                  await onSelectedOptionChanged("Yes");
                  isLoading.value = false;
                },
              ),
              const Text('Yes'),
              if (isLoading.value)
                const Padding(
                    padding: EdgeInsets.only(left: AppSize.ks),
                    child: SizedBox(
                        height: 18,
                        width: 18,
                        child: CircularProgressIndicator.adaptive())),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Radio(
                value: "No",
                groupValue: intialValue,
                onChanged: (value) {
                  onSelectedOptionChanged("No");
                },
              ),
              const Text('No'),
            ],
          ),
        ],
      ),
    );
  }
}
