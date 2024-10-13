/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
    required this.content,
    required this.onRetry,
    super.key,
  });
  final String content;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return BlurDialogBox(
      content: Column(
        children: [
          const Icon(
            Icons.error,
            color: AppColor.red,
            size: 40,
          ),
          const SizedBox(height: 10),
          Text(
            'Error',
            style: applyRobotoFont(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            content,
            style: applyRobotoFont(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: AppColor.grey,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: onRetry,
            child: const Text('Retry'),
          ),
        ],
      ),
      actions: const [],
    );
  }
}
