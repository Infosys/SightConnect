// ignore_for_file: file_names

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/models/consent_model.dart';
import 'package:eye_care_for_all/core/repositories/consent_repository_impl.dart';

import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';

import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EighteenPlusDeclaration extends HookConsumerWidget {
  const EighteenPlusDeclaration({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isLoading = useState(false);
    // final loc = context.loc!;
    return PopScope(
      canPop: false,
      child: BlurDialogBox(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.exclamationmark_triangle_fill,
              color: AppColor.orange,
              size: 40,
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "18+ Declaration",
              style: applyRobotoFont(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "This app is intended for users aged 18 and above. By clicking 'I Agree', you are confirming that you are 18 years or older.",
              style: applyRobotoFont(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: AppColor.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Consumer(
                  builder: (context, ref, child) {
                    if (isLoading.value) {
                      return const CircularProgressIndicator(
                        valueColor:
                            AlwaysStoppedAnimation<Color>(AppColor.orange),
                      );
                    }
                    return TextButton(
                      onPressed: () async {
                        final model = ref.read(initializationProvider);
                        final navigator = Navigator.of(context);
                        try {
                          isLoading.value = true;
                          await model.sumbitEighteenPlusDeclaration();
                          navigator.pop(true);
                        } catch (e) {
                          logger.e(e);
                          Fluttertoast.showToast(
                            msg:
                                "Failed to submit declaration. Please try again later.",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                          );
                        } finally {
                          isLoading.value = false;
                        }
                      },
                      child: const Text("I Agree"),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        actions: const [],
      ),
    );
  }
}
