import 'dart:ui';
import 'package:eye_care_for_all/core/services/network_info.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_result/pages/triage_result_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';
import '../../../../../shared/theme/text_theme.dart';
import '../../../../common_features/triage/domain/models/triage_post_model.dart';
import '../../../../common_features/triage/presentation/providers/triage_stepper_provider.dart';
import '../../../../common_features/triage/presentation/providers/optometrician_triage_provider.dart';
import '../provider/optometritian_feedback_provider.dart';

void showFeedback(
  BuildContext context,
) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
          var feedback = ref.watch(feedBackProvider);
          var features = ["Assessments", "Visual Acuity", "Eye Scan"];
          var ratingValues = [1.1, 1.1, 1.1];

          Widget assistance(int index) {
            switch (index) {
              case 0:
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Did the patient need assistance?",
                      style: applyRobotoFont(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColor.grey,
                      ),
                    ),
                    Switch(
                      value: feedback.assessmentAssistance,
                      onChanged: (value) {
                        feedback.assessmentAssistance = value;
                      },
                      activeTrackColor: AppColor.blue,
                      activeColor: AppColor.white,
                    ),
                  ],
                );
              case 1:
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: AppSize.kmheight,
                    ),
                    SizedBox(
                      height: AppSize.height(context) * 0.02,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Did the patient need assistance?",
                            style: applyRobotoFont(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColor.grey,
                            ),
                          ),
                          Switch(
                            value: feedback.visualAcuityAssistance,
                            onChanged: (value) {
                              feedback.visualAcuityAssistance = value;
                            },
                            activeTrackColor: AppColor.blue,
                            activeColor: AppColor.white,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppSize.height(context) * 0.07,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Was the patient Aided?",
                            style: applyRobotoFont(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColor.grey,
                            ),
                          ),
                          Switch(
                            value: feedback.visualAcuityAided,
                            onChanged: (value) {
                              feedback.visualAcuityAided = value;
                            },
                            activeTrackColor: AppColor.blue,
                            activeColor: AppColor.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              case 2:
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Did the patient need assistance?",
                      style: applyRobotoFont(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColor.grey,
                      ),
                    ),
                    Switch(
                      value: feedback.eyeScanAssistance,
                      onChanged: (value) {
                        feedback.eyeScanAssistance = value;
                      },
                      activeTrackColor: AppColor.blue,
                      activeColor: AppColor.white,
                    ),
                  ],
                );
              default:
                return Container();
            }
          }

          logger.d("isloading called : ${feedback.isLoading}");
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
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.close))
                  ],
                ),
                content: SingleChildScrollView(
                  child: feedback.isLoading == true
                      ? const Center(
                          child: CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(AppColor.blue),
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
                                color: AppColor.black,
                              ),
                            ),
                            const SizedBox(
                              height: AppSize.klheight,
                            ),
                            for (int index = 0;
                                index < features.length;
                                index++) ...[
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        features[index],
                                        style: applyRobotoFont(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: AppColor.black,
                                        ),
                                      ),
                                      RatingBar.builder(
                                        itemSize: 30,
                                        initialRating:
                                            ratingValues[index].toDouble(),
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemPadding: const EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color: AppColor.yellow,
                                        ),
                                        onRatingUpdate: (rating) {
                                          ratingValues[index] =
                                              rating.toDouble();
                                          if (index == 0) {
                                            feedback.questionarie =
                                                rating.toDouble().toString();
                                          } else if (index == 1) {
                                            feedback.observation =
                                                rating.toDouble().toString();
                                          } else if (index == 2) {
                                            feedback.eyeScan =
                                                rating.toDouble().toString();
                                          }
                                        },
                                      )
                                    ],
                                  ),
                                  assistance(index),
                                ],
                              )
                            ],
                            const SizedBox(
                              height: AppSize.kmheight,
                            ),
                            Text(
                              "Please leave your feedback below",
                              style: applyRobotoFont(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColor.grey,
                              ),
                            ),
                            const SizedBox(
                              height: AppSize.klheight,
                            ),
                            TextField(
                              controller: feedback.feedBackController,
                              maxLines: 5,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(AppSize.kmradius),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: AppSize.klheight,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () async {
                                  feedback.isLoading = true;
                                  logger.d(
                                      "isLoading changed to : ${feedback.isLoading}");
                                  //give 5 seconds of timeout

                                  feedback.save();
                                  // ref
                                  //     .read(triageStepperProvider)
                                  //     .goToNextStep();
                                  ref.read(triageStepperProvider).reset();

                                  if (await ref
                                      .read(connectivityProvider)
                                      .isConnected()) {
                                    logger.d("in connection");
                                    ref
                                        .read(optometricianTriageProvider)
                                        .saveTriage()
                                        .then((value) {
                                      logger.d("value is : $value");
                                      feedback.isLoading = false;
                                      // if (value.patientId != null) {
                                      //   Navigator.of(context).push(
                                      //     MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           // const TriageResultPage()
                                      //           TriageResultPage(
                                      //               triageResult: result),
                                      //     ),
                                      //   );
                                      // }
                                      ref.read(triageStepperProvider).reset();
                                      
                                      Navigator.popUntil(
                                          context, (route) => route.isFirst);

                                      // ScaffoldMessenger.of(context)
                                      //     .showSnackBar(
                                      //   const SnackBar(
                                      //     content: Text(
                                      //         "Triage Not Saved! Bad Connection"),
                                      //   ),
                                      // );
                                    }).catchError((e) {
                                      logger.d("error is : $e");
                                      feedback.isLoading = false;
                                    });
                                  } else {
                                    if (context.mounted) {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: const Text(
                                                  "No Internet Connection"),
                                              content: const Text(
                                                  "Please check your internet connection and try again"),
                                              actions: [
                                                TextButton(
                                                    onPressed: () {
                                                      //pop until route isfirst
                                                      Navigator.of(context)
                                                          .popUntil((route) =>
                                                              route.isFirst);
                                                    },
                                                    child: const Text("OK"))
                                              ],
                                            );
                                          });
                                    }
                                  }
                                },
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                    color: AppColor.white,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      AppSize.klradius,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "Save",
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
                )),
          );
        });
      });
}
