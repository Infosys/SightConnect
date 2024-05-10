import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/pages/triage_instruction_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

Future<T?> showTriageHowToProceedBottomSheet<T>(
    {required BuildContext context}) {
  return showModalBottomSheet(
    context: context,
    isDismissible: false,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    builder: (context) {
      return DraggableScrollableSheet(
        initialChildSize: 0.4,
        minChildSize: 0.4,
        maxChildSize: 0.9,
        builder: (context, controller) {
          return ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Scaffold(
              backgroundColor: Colors.white,
              body: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.km,
                  vertical: AppSize.km,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'How do you want to proceed?',
                      style: applyFiraSansFont(
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.kl,
                    ),
                    OutlinedButton(
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(
                                const BorderSide(color: AppColor.primary))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              fullscreenDialog: true,
                              builder: (context) =>
                                  const TriageInstructionPage(),
                            ),
                          );
                        },
                        child: Text(
                          'I have a problem and want to validate',
                          style: applyRobotoFont(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: AppColor.primary),
                        )),
                    const SizedBox(
                      height: AppSize.km,
                    ),
                    OutlinedButton(
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(
                                const BorderSide(color: AppColor.primary))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              fullscreenDialog: true,
                              builder: (context) =>
                                  const TriageInstructionPage(),
                            ),
                          );
                        },
                        child: Text(
                          'I am not sure if I have a problem',
                          style: applyRobotoFont(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: AppColor.primary),
                        )),
                    const SizedBox(
                      height: AppSize.km,
                    ),
                    OutlinedButton(
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(
                                const BorderSide(color: AppColor.primary))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              fullscreenDialog: true,
                              builder: (context) =>
                                  const TriageInstructionPage(),
                            ),
                          );
                        },
                        child: Text(
                          'I have no eye issues – just want to check',
                          style: applyRobotoFont(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: AppColor.primary),
                        )),
                    const SizedBox(
                      height: AppSize.km,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}
