import 'dart:ui';

import 'package:eye_care_for_all/core/providers/global_language_provider.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/core/services/network_info.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/pages/optometritian_dashboard_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';
import '../../../../../core/models/keycloak.dart';
import '../../../../../core/services/persistent_auth_service.dart';
import '../../../../../shared/theme/text_theme.dart';
import '../../../../common_features/triage/data/source/local/triage_db_helper.dart';
import '../../../../common_features/triage/presentation/providers/optometrician_triage_provider.dart';
import '../provider/optometritian_add_patient_provider.dart';
import '../provider/optometritian_feedback_provider.dart';

void showTriageFeedbackForm(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return const TriageFeedbackDialog();
    },
  );
}

class TriageFeedbackDialog extends HookConsumerWidget {
  const TriageFeedbackDialog({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var feedback = ref.watch(feedBackProvider);
    final loc = context.loc!;
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        insetPadding: const EdgeInsets.all(10),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              loc.feedback,
              style: applyFiraSansFont(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        content: SingleChildScrollView(
          child: feedback.isLoading == true
              ? const Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(AppColor.blue),
                  ),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      loc.optoImproveApp,
                      style: applyRobotoFont(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColor.grey,
                      ),
                    ),
                    const SizedBox(height: AppSize.km),
                    AssistanceRatingBar(
                      title: loc.assessments,
                      onChanged: (rating) {
                        feedback.questionarie = rating.toString();
                      },
                    ),
                    AssistanceCheckBox(
                      question: loc.optoPatientAssistance,
                      value: feedback.assessmentAssistance,
                      onChanged: (value) {
                        feedback.assessmentAssistance = value;
                      },
                    ),
                    const SizedBox(height: AppSize.km),
                    AssistanceRatingBar(
                      title: loc.optoVisualAcuity,
                      onChanged: (rating) {
                        feedback.observation = rating.toString();
                      },
                    ),
                    AssistanceCheckBox(
                      question: loc.optoPatientAssistance,
                      value: feedback.visualAcuityAssistance,
                      onChanged: (value) {
                        feedback.visualAcuityAssistance = value;
                      },
                    ),
                    AssistanceCheckBox(
                      question: loc.optoPatientAided,
                      value: feedback.visualAcuityAided,
                      onChanged: (value) {
                        feedback.visualAcuityAided = value;
                      },
                    ),
                    const SizedBox(height: AppSize.km),
                    AssistanceRatingBar(
                      title: loc.optoEyeScan,
                      onChanged: (rating) {
                        feedback.eyeScan = rating.toString();
                      },
                    ),
                    AssistanceCheckBox(
                      question: loc.optoPatientAssistance,
                      value: feedback.eyeScanAssistance,
                      onChanged: (value) {
                        feedback.eyeScanAssistance = value;
                      },
                    ),
                    const SizedBox(height: AppSize.ks),
                    AssistanceCheckBox(
                        question: "Does patient have Cataract?",
                        value: feedback.isCataract,
                        onChanged: (value) {
                          feedback.isCataract = value;
                        }),
                    const SizedBox(height: AppSize.ks),
                    AssistanceCheckBox(
                        question: "Does patient have Red Eye?",
                        value: feedback.isRedEye,
                        onChanged: (value) {
                          feedback.isRedEye = value;
                        }),
                    const SizedBox(height: AppSize.ks),
                    Text(
                      loc.optoLeaveFeedback,
                      style: applyRobotoFont(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColor.grey,
                      ),
                    ),
                    const SizedBox(height: AppSize.km),
                    TextField(
                      controller: feedback.feedBackController,
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppSize.km),
                        ),
                      ),
                    ),
                    const SizedBox(height: AppSize.km),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          await handleButtonPress(context, feedback, ref);
                          // RESET LANGUAGE PREFRENCE
                          await ref
                              .read(globalLanguageProvider)
                              .setCurrentLocale("en");
                        },
                        child: Text(
                          loc.submitButton,
                          style: applyRobotoFont(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  Future<void> handleButtonPress(
    BuildContext context,
    FeedBackNotifier feedback,
    WidgetRef ref,
  ) async {
    feedback.isLoading = true;
    logger.d("isLoading changed to : ${feedback.isLoading}");

    feedback.save();
    // ref.read(triageStepperProvider).reset();

    if (await ref.read(connectivityProvider).isConnected() && context.mounted) {
      await handleConnection(ref, feedback, context);
    } else {
      showNoInternetDialog(context);
    }
  }

  Future<void> handleConnection(
    WidgetRef ref,
    FeedBackNotifier feedback,
    BuildContext context,
  ) async {
    logger.d("in connection");
    try {
      await ref
          .read(optometricianTriageProvider)
          .saveTriage()
          .then((value) async {
        logger.d({
          "Optometritian Triage : ${value.toJson()}",
        });
      });
    } on Exception catch (e) {
      DioErrorHandler.handleDioError(e);
      Fluttertoast.showToast(
          msg:
              "Error occured while saving triage data. Please try again later.");
    } finally {
      final role = PersistentAuthStateService.authState.activeRole;
      final activeRole = roleMapper(role);
      if (activeRole != Role.ROLE_PATIENT) {
        await TriageDBHelper().deleteAllTriageSteps();
        ref.invalidate(optometritianAddPatientProvider);
        ref.read(resetProvider).reset();
        feedback.isLoading = false;
        if (context.mounted) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => const OptometritianDashboardPage()),
              (route) => route.isFirst);
        }
      }
    }
  }

  void showNoInternetDialog(BuildContext context) {
    final loc = context.loc!;
    if (context.mounted) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(loc.optoNoInternet),
            content: Text(loc.optoCheckInternet),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: Text(loc.okButton),
              )
            ],
          );
        },
      );
    }
  }
}

class AssistanceCheckBox extends StatelessWidget {
  final String question;
  final bool value;
  final ValueChanged<bool> onChanged;

  const AssistanceCheckBox({
    Key? key,
    required this.question,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          question,
          style: applyRobotoFont(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        Switch.adaptive(
          value: value,
          onChanged: onChanged,
          activeColor: AppColor.blue,
        ),
      ],
    );
  }
}

class AssistanceRatingBar extends StatelessWidget {
  const AssistanceRatingBar({
    super.key,
    required this.title,
    required this.onChanged,
  });
  final String title;

  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: applyFiraSansFont(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          child: RatingBar(
            allowHalfRating: true,
            itemSize: 24,
            glowColor: AppColor.yellow,
            ratingWidget: RatingWidget(
              full: const Icon(
                Icons.star,
                color: AppColor.yellow,
              ),
              half: const Icon(
                Icons.star_half,
                color: AppColor.yellow,
              ),
              empty: const Icon(
                Icons.star_border,
                color: AppColor.yellow,
              ),
            ),
            onRatingUpdate: (rating) {
              onChanged(rating);
            },
          ),
        )
      ],
    );
  }
}
