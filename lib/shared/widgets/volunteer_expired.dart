import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/models/volunteer_post_model.dart';
import 'package:eye_care_for_all/core/repositories/volunteer_repository_impl.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/env.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/volunteer_approved.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VolunteerExpired extends HookConsumerWidget {
  const VolunteerExpired({super.key, required this.volunteerId});

  final int volunteerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var startDate = useState<DateTime>(DateTime.now());
    var endDate = useState<DateTime>(DateTime.now());
    var isChecked = useState<bool>(false);
    var isLoading = useState<bool>(false);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/we_need_you_volunteer.png",
              height: AppSize.height(context) * 0.3,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Text(
                        "We Miss You, Volunteer!",
                        style: applyFiraSansFont(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.km,
                    ),
                    Text(
                      "Thank you for your valuable contributions as a volunteer with us. Your previous volunteering period has ended, and we would love to have you back.",
                      style: applyRobotoFont(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: AppSize.km,
                    ),
                    Text("Extend Your Volunteering :",
                        style: applyFiraSansFont(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: AppSize.km,
                    ),
                    const NextStepCard(
                      icon: Icons.event,
                      title: 'Select New Dates',
                      description:
                          'Choose your new start and end dates for the extended volunteering period.',
                    ),
                    const NextStepCard(
                      icon: Icons.assignment_turned_in,
                      title: 'Agree to Terms',
                      description:
                          'Confirm your willingness to continue serving as a volunteer during the selected timeframe.',
                    ),
                    const NextStepCard(
                      icon: Icons.handshake,
                      title: 'Submit Your Pledge',
                      description:
                          'Extend your volunteering period by pledging your commitment once more.',
                    ),
                    const SizedBox(
                      height: AppSize.km,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: startDate.value,
                              firstDate: DateTime.now(),
                              lastDate:
                                  DateTime.now().add(const Duration(days: 365)),
                            );
                            if (pickedDate != null) {
                              /*  return "${picked.year}-${picked.month}-${picked.day}"; */
                              startDate.value = pickedDate;
                            }
                          },
                          child: Container(
                            width: AppSize.width(context) * 0.4,
                            decoration: BoxDecoration(
                              color: Color(int.parse(
                                '0xffCFD8DC',
                              )),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: SvgPicture.asset(
                                    "assets/images/triage_card_bg.svg",
                                    width: AppSize.width(context),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Select Start Date",
                                        style: applyRobotoFont(),
                                      ),
                                      const SizedBox(
                                        height: AppSize.ks,
                                      ),
                                      const Icon(Icons.calendar_today,
                                          size: 20, color: Colors.blue),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: startDate.value,
                              firstDate: startDate.value,
                              lastDate:
                                  startDate.value.add(const Duration(days: 14)),
                            );
                            if (pickedDate != null) {
                              /*  return "${picked.year}-${picked.month}-${picked.day}"; */
                              endDate.value = pickedDate;
                            }
                          },
                          child: Container(
                            width: AppSize.width(context) * 0.4,
                            decoration: BoxDecoration(
                              color: Color(int.parse(
                                '0xffCFD8DC',
                              )),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: SvgPicture.asset(
                                    "assets/images/triage_card_bg.svg",
                                    width: AppSize.width(context),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Select End Date",
                                        style: applyRobotoFont(),
                                      ),
                                      const SizedBox(
                                        height: AppSize.ks,
                                      ),
                                      const Icon(Icons.calendar_today,
                                          size: 20, color: Colors.blue),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppSize.km,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chosen Start Date: ${startDate.value.day}/${startDate.value.month}/${startDate.value.year}",
                          style: applyRobotoFont(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: AppSize.ks),
                        Text(
                          "Chosen End Date: ${endDate.value.day}/${endDate.value.month}/${endDate.value.year}",
                          style: applyRobotoFont(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppSize.km,
                    ),
                    CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      value: isChecked.value,
                      onChanged: (value) {
                        isChecked.value = value!;
                      },
                      title: const Text(
                          "I agree to serve as a volunteer for the specified timeframe"),
                    ),
                    const SizedBox(
                      height: AppSize.km,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: isChecked.value
                            ? () async {
                                if (isChecked.value) {
                                  VolunteerPostModel volunteerPostModel =
                                      VolunteerPostModel(
                                          id: volunteerId,
                                          userId: int.parse(
                                              PersistentAuthStateService
                                                  .authState.userId!),
                                          userType: null,
                                          startDate: startDate.value.toUtc(),
                                          endDate: endDate.value.toUtc(),
                                          status: null);

                                  try {
                                    isLoading.value = true;
                                    await ref
                                        .read(volunteerRepositoryProvider)
                                        .extendVolunteer(
                                            volunteerPostModel, volunteerId)
                                        .then((value) async {
                                      isLoading.value = false;
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          duration: Duration(seconds: 3),
                                          content: Text(
                                              "Your request has been sent successfully"),
                                        ),
                                      );

                                      // ref.read(dioRefreshTokenProvider);

                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const InitializationPage()),
                                          (route) => false);
                                    });
                                  } on DioException catch (e) {
                                    DioErrorHandler.handleDioError(e);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                            "An error occured while registering as a volunteer. Please try again later."),
                                      ),
                                    );
                                    return;
                                  }
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          "Please agree to the terms and conditions to proceed."),
                                    ),
                                  );
                                }
                              }
                            : null,
                        child: const Text("Join Again"),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.km,
                    ),
                    Text(
                      'We greatly appreciate your dedication and look forward to having you continue making a difference.If you have any questions or need further assistance, please contact us at ',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Icon(Icons.help_outline,
                            size: 16, color: Colors.blue),
                        const SizedBox(width: 8),
                        Text(
                          Env.appEmail,
                          style: applyRobotoFont(color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
