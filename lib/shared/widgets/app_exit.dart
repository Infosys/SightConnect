/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppExit extends StatelessWidget {
  const AppExit({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      buttonPadding: const EdgeInsets.symmetric(horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.exit_to_app,
            color: Colors.black,
            size: 40,
          ),
          const SizedBox(height: 16),
          Text(
            "Are you sure you want to exit?",
            style: applyRobotoFont(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      actions: [
        OutlinedButton(
          style: ElevatedButton.styleFrom(
            maximumSize: const Size(100, 50),
            minimumSize: const Size(100, 50),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("No"),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            maximumSize: const Size(100, 50),
            minimumSize: const Size(100, 50),
          ),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pop();
          },
          child: const Text("Yes"),
        ),
      ],
    );
  }
}
