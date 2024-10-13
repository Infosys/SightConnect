/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../apps/sightconnect/helpers/providers/global_provider.dart';
import '../constants/app_color.dart';
import '../theme/text_theme.dart';

class TextScalePopupMenu extends HookConsumerWidget {
  const TextScalePopupMenu({super.key});

  static void show(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) {
        return const TextScalePopupMenu();
      },
    ).then((value) async {
      if (value == null) {
        ref.read(globalTextScaleFactorProvider).rollback();
      } else {
        ref.read(globalTextScaleFactorProvider).persistChanges();
      }
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(globalTextScaleFactorProvider);
    var defaultScale = useState<double>(model.textScaleFactor);
    final loc = context.loc!;

    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      insetPadding: const EdgeInsets.all(0),
      title: Text(loc.textSize),
      content: SizedBox(
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onTap: () async {
                  if (defaultScale.value < 0.5) {
                    Fluttertoast.showToast(
                      msg: loc.minimumTextSizeReached,
                      backgroundColor: AppColor.red,
                    );
                  } else {
                    defaultScale.value -= 0.1;
                    model.setTextScaleFactor(defaultScale.value);
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: defaultScale.value < 1
                        ? AppColor.primary.withOpacity(0.2)
                        : AppColor.lightGrey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.arrow_downward,
                        size: 16,
                      ),
                      Text(
                        loc.decrease,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: applyRobotoFont(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onTap: () async {
                  defaultScale.value = 1;
                  model.setTextScaleFactor(defaultScale.value);
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: defaultScale.value == 1
                        ? AppColor.primary.withOpacity(0.2)
                        : AppColor.lightGrey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.refresh,
                        size: 16,
                      ),
                      Text(
                        loc.reset,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: applyRobotoFont(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onTap: () async {
                  if (defaultScale.value > 1.3) {
                    Fluttertoast.showToast(
                      msg: loc.maximumTextSizeReached,
                      backgroundColor: AppColor.red,
                    );
                  } else {
                    defaultScale.value += 0.1;
                    model.setTextScaleFactor(defaultScale.value);
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: defaultScale.value > 1
                        ? AppColor.primary.withOpacity(0.2)
                        : AppColor.lightGrey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.arrow_upward,
                        size: 16,
                      ),
                      Text(
                        loc.increase,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: applyRobotoFont(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: Text(loc.confirmButton),
        ),
      ],
    );
  }
}
