import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TextScalePopupMenu extends HookConsumerWidget {
  const TextScalePopupMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(globalTextScaleFactorProvider);
    var defaultScale = useState<double>(model.textScaleFactor);

    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      insetPadding: const EdgeInsets.all(0),
      title: const Text("Text Size"),
      content: SizedBox(
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onTap: () async {
                  defaultScale.value -= 0.1;
                  if (defaultScale.value < 0.5) {
                    Fluttertoast.showToast(
                      msg: "Minimum text size reached",
                      backgroundColor: AppColor.red,
                    );
                  } else {
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
                        "Decrease",
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
                        "Reset",
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
                  defaultScale.value += 0.1;
                  if (defaultScale.value > 1.3) {
                    Fluttertoast.showToast(
                      msg: "Maximum text size reached",
                      backgroundColor: AppColor.red,
                    );
                  } else {
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
                        "Increase",
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
            Navigator.of(context).pop();
          },
          child: const Text("Confirm"),
        ),
      ],
    );
  }
}
