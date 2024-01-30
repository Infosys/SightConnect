import 'dart:ui';
import 'package:eye_care_for_all/core/services/network_info.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';
import '../../../../../shared/theme/text_theme.dart';
import '../../../../common_features/triage/presentation/providers/triage_stepper_provider.dart';
import '../../../../common_features/triage/presentation/providers/optometrician_triage_provider.dart';
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
              'FeedBack',
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
                      "We would like your feedback to improve our application",
                      style: applyRobotoFont(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColor.grey,
                      ),
                    ),
                    const SizedBox(height: AppSize.kmheight),
                    AssistanceRatingBar(
                      title: "Assessments",
                      onChanged: (rating) {
                        feedback.questionarie = rating.toString();
                      },
                    ),
                    AssistanceCheckBox(
                      question: "Did the patient need assistance?",
                      value: feedback.assessmentAssistance,
                      onChanged: (value) {
                        feedback.assessmentAssistance = value;
                      },
                    ),
                    const SizedBox(height: AppSize.kmheight),
                    AssistanceRatingBar(
                      title: "Visual Acuity",
                      onChanged: (rating) {
                        feedback.observation = rating.toString();
                      },
                    ),
                    AssistanceCheckBox(
                      question: "Did the patient need assistance?",
                      value: feedback.visualAcuityAssistance,
                      onChanged: (value) {
                        feedback.visualAcuityAssistance = value;
                      },
                    ),
                    AssistanceCheckBox(
                      question: "Was the patient Aided?",
                      value: feedback.visualAcuityAided,
                      onChanged: (value) {
                        feedback.visualAcuityAided = value;
                      },
                    ),
                    const SizedBox(height: AppSize.kmheight),
                    AssistanceRatingBar(
                      title: "Eye Scan",
                      onChanged: (rating) {
                        feedback.eyeScan = rating.toString();
                      },
                    ),
                    AssistanceCheckBox(
                      question: "Did the patient need assistance?",
                      value: feedback.eyeScanAssistance,
                      onChanged: (value) {
                        feedback.eyeScanAssistance = value;
                      },
                    ),
                    const SizedBox(height: AppSize.kmheight),
                    Text(
                      "Please leave your feedback below",
                      style: applyRobotoFont(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColor.grey,
                      ),
                    ),
                    const SizedBox(height: AppSize.kmheight),
                    TextField(
                      controller: feedback.feedBackController,
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppSize.kmradius),
                        ),
                      ),
                    ),
                    const SizedBox(height: AppSize.kmheight),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          await handleButtonPress(context, feedback, ref);
                        },
                        child: Text(
                          "Submit",
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
    ref.read(triageStepperProvider).reset();

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
    ref.read(optometricianTriageProvider).saveTriage().then((value) {
      logger.d({
        "Optometritian Triage": value.toJson(),
      });
      feedback.isLoading = false;

      ref.read(resetProvider).reset();
    }).catchError((e) {
      logger.d("error is : $e");
      feedback.isLoading = false;
    }).whenComplete(() {
      Navigator.popUntil(context, (route) => route.isFirst);
    });
  }

  void showNoInternetDialog(BuildContext context) {
    if (context.mounted) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("No Internet Connection"),
            content: const Text(
                "Please check your internet connection and try again"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: const Text("OK"),
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
