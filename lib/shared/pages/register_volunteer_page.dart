/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/volunteer_post_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/repositories/volunteer_repository_impl.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/widgets/volunteer_approved.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/widgets/volunteer_expired.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/widgets/volunteer_pending.dart';
import 'package:eye_care_for_all/env.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/services/token_refresh_service.dart';
import 'package:eye_care_for_all/shared/constants/app_images.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterVolunteerPage extends HookConsumerWidget {
  const RegisterVolunteerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var startDate = useState<DateTime>(DateTime.now());
    var endDate = useState<DateTime>(DateTime.now());
    var isChecked = useState<bool>(false);
    var isLoading = useState<bool>(false);
    var volunteerId = useState<int?>(null);

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.scaffoldBg),
            fit: BoxFit.cover,
          ),
          color: Colors.transparent),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: const CustomAppbar(
            title: Text("Register as a Volunteer"),
            centerTitle: false,
            backgroundColor: Colors.transparent,
          ),
          body: !isLoading.value
              ? ref.watch(checkVolunteerProvider).when(data: (value) {
                  volunteerId.value = value.id;
                  logger.f("check volunteer response : ${value.toString()}");
                  //Status is Pending

                  if (value.status == Status.PENDING) {
                    return const VolunteerPending();
                  } else if (value.status == Status.EXPIRED) {
                    return VolunteerExpired(
                      volunteerId: volunteerId.value!,
                    );
                  } else if (value.status == Status.ACTIVE) {
                    if (PersistentAuthStateService.authState.roles!
                        .contains("ROLE_VOLUNTEER")) {
                      return const VolunteerApproved();
                    }
                    return const VolunteerPending();
                  } else if (value.status == Status.REJECTED ||
                      value.status == Status.REVOKED ||
                      value.status == Status.SUSPENDED) {
                    return Center(
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Your volunteer status has been revoked. Please drop a mail @${Env.appEmail} for further details.",
                                style: applyFiraSansFont(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  } else {
                    return Center(
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "There was some problem fetching your details, try again later.",
                                style: applyFiraSansFont(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }

                  // return  VolunteerExpired(volunteerId: volunteerId.value!,);
                  // return const VolunteerPending();
                }, loading: () {
                  return const Center(
                      child: CircularProgressIndicator.adaptive());
                }, error: (error, stackTrace) {
                  logger.f("error : $error");
                  if (error == "404") {
                    return SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "assets/images/register_volunteer.png",
                              height: AppSize.height(context) * 0.3,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Center(
                                    child: Text(
                                      "Volunteer Registration",
                                      style: applyFiraSansFont(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: AppSize.km,
                                  ),
                                  Text(
                                    "Become a valued member of our team by registering as a volunteer. Contribute to our events, raise awareness, and make a difference. We look forward to welcoming you aboard.",
                                    style: applyRobotoFont(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const SizedBox(
                                    height: AppSize.km,
                                  ),
                                  Text("Please select your availability:",
                                      style: applyFiraSansFont(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                  const SizedBox(
                                    height: AppSize.km,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: () async {
                                          DateTime? pickedDate =
                                              await showDatePicker(
                                            context: context,
                                            initialDate: startDate.value,
                                            firstDate: DateTime.now(),
                                            lastDate: DateTime.now()
                                                .add(const Duration(days: 365)),
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
                                            borderRadius:
                                                BorderRadius.circular(8),
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
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Select Start Date",
                                                      style: applyRobotoFont(),
                                                    ),
                                                    const SizedBox(
                                                      height: AppSize.ks,
                                                    ),
                                                    const Icon(
                                                        Icons.calendar_today,
                                                        size: 20,
                                                        color: Colors.blue),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          DateTime? pickedDate =
                                              await showDatePicker(
                                            context: context,
                                            initialDate: startDate.value,
                                            firstDate: startDate.value,
                                            lastDate: startDate.value
                                                .add(const Duration(days: 14)),
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
                                            borderRadius:
                                                BorderRadius.circular(8),
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
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    Text("Select End Date",
                                                        style:
                                                            applyRobotoFont()),
                                                    const SizedBox(
                                                      height: AppSize.ks,
                                                    ),
                                                    const Icon(
                                                        Icons.calendar_today,
                                                        size: 20,
                                                        color: Colors.blue),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Chosen Start Date: ${startDate.value.day}/${startDate.value.month}/${startDate.value.year}",
                                        style: applyRobotoFont(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: AppSize.ks),
                                      Text(
                                        "Chosen End Date: ${endDate.value.day}/${endDate.value.month}/${endDate.value.year}",
                                        style: applyRobotoFont(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
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
                                    title: Text(
                                        "I agree to serve as a volunteer for the specified timeframe",
                                        style: applyRobotoFont()),
                                  ),
                                  const SizedBox(
                                    height: AppSize.km,
                                  ),
                                  Center(
                                    child: ElevatedButton(
                                      onPressed: isChecked.value
                                          ? () async {
                                              if (isChecked.value) {
                                                VolunteerPostModel
                                                    volunteerPostModel =
                                                    VolunteerPostModel(
                                                        id: null,
                                                        userId: int.parse(
                                                            PersistentAuthStateService
                                                                .authState
                                                                .userId!),
                                                        userType: null,
                                                        startDate: startDate
                                                            .value
                                                            .toUtc(),
                                                        endDate: endDate.value
                                                            .toUtc(),
                                                        status: null);

                                                try {
                                                  isLoading.value = true;
                                                  await ref
                                                      .read(
                                                          volunteerRepositoryProvider)
                                                      .postVolunteer(
                                                          volunteerPostModel)
                                                      .then((value) async {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      const SnackBar(
                                                        duration: Duration(
                                                            seconds: 3),
                                                        content: Text(
                                                            "Your request has been sent successfully"),
                                                      ),
                                                    );

                                                    await ref
                                                        .watch(
                                                            dioRefreshTokenProvider)
                                                        .then((value) async {
                                                      logger.f(
                                                          "refresh token new");
                                                      logger.f(
                                                          "roles : ${PersistentAuthStateService.authState.roles}");

                                                      // ref.read(
                                                      //     dioRefreshTokenProvider);
                                                      isLoading.value = false;
                                                      Navigator.pushAndRemoveUntil(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const InitializationPage()),
                                                          (route) => false);
                                                    });
                                                  });
                                                } on DioException catch (e) {
                                                  DioErrorHandler
                                                      .handleDioError(e);
                                                  if (context.mounted) {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      const SnackBar(
                                                        content: Text(
                                                            "An error occured while registering as a volunteer. Please try again later."),
                                                      ),
                                                    );
                                                  }
                                                  return;
                                                }
                                              } else {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  const SnackBar(
                                                    content: Text(
                                                        "Please agree to the terms and conditions to proceed."),
                                                  ),
                                                );
                                              }
                                            }
                                          : null,
                                      child:
                                          const Text("Register as a Volunteer"),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  } else {
                    return const Center(
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "There was some problem fetching your details, try again later.",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                })
              : const Center(child: CircularProgressIndicator.adaptive())),
    );
  }
}

// Row(
//   children: [
//     SizedBox(
//       width: AppSize.width(context) * 0.5,
//       child: InputDatePickerFormField(
//         fieldLabelText: "Start Date",
//         firstDate: DateTime.now(),
//         lastDate:
//             DateTime.now().add(const Duration(days: 365)),
//         initialDate: startDate.value,
//         onDateSubmitted: (DateTime value) {
//           startDate.value = value;
//         },
//       ),
//     ),
//     const SizedBox(
//       width: AppSize.kl,
//     ),
//     InkWell(
//       onTap: () async {
//         DateTime? pickedDate = await showDatePicker(
//           context: context,
//           initialDate: DateTime.now(),
//           firstDate: DateTime.now(),
//           lastDate:
//               DateTime.now().add(const Duration(days: 365)),
//         );
//         if (pickedDate != null) {
//           /*  return "${picked.year}-${picked.month}-${picked.day}"; */
//           startDate.value = pickedDate;
//         }
//       },
//       child: const Icon(Icons.calendar_today,
//           size: 20, color: Colors.blue),
//     )
//   ],
// ),

// TextField(
//   decoration: InputDecoration(
//       labelText: "Start Date",
//       hintText: "Enter the start date eg: 1/10/2024",
//       suffixIcon: InkWell(
//         onTap: () async {
//           DateTime? pickedDate = await showDatePicker(
//             context: context,

//             initialDate: DateTime.now(),
//             firstDate: DateTime.now(),
//             lastDate:
//                 DateTime.now().add(const Duration(days: 365)),
//           );
//           if (pickedDate != null) {
//             /*  return "${picked.year}-${picked.month}-${picked.day}"; */
//             startDate.value = pickedDate;
//           }
//         },
//         child: const Icon(Icons.calendar_today,
//             size: 20, color: Colors.blue),
//       )),
// ),
// const SizedBox(
//   height: AppSize.km,
// ),
// TextField(
//   decoration: InputDecoration(
//       labelText: "End Date",
//       hintText: "Enter the end date, eg : 1/10/2024",
//       suffixIcon: InkWell(
//         onTap: () async {
//           DateTime? pickedDate = await showDatePicker(
//             context: context,
//             initialDate: startDate.value,
//             firstDate: startDate.value,
//             lastDate:
//                 startDate.value.add(const Duration(days: 14)),
//           );
//           if (pickedDate != null) {
//             /*  return "${picked.year}-${picked.month}-${picked.day}"; */
//             endDate.value = pickedDate;
//           }
//         },
//         child: const Icon(Icons.calendar_today,
//             size: 20, color: Colors.blue),
//       )),
// ),

