import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/models/volunteer_post_model.dart';
import 'package:eye_care_for_all/core/repositories/volunteer_repository_impl.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/pages/patient_dashboard_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterVolunteer extends HookConsumerWidget {
  const RegisterVolunteer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var startDate = useState<DateTime>(DateTime.now());
    var endDate = useState<DateTime>(DateTime.now());
    var isChecked = useState<bool>(false);
    var isLoading = useState<bool>(false);

    return Scaffold(
        appBar: const CustomAppbar(
          title: Text("Register as a Volunteer"),
          centerTitle: false,
        ),
        body: !isLoading.value
            ? ref.watch(checkVolunteerProvider).when(data: (value) {
                logger.f("check volunteer response : ${value.toString()}");
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "You are already registered as a volunteer.",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              }, loading: () {
                return const Center(
                    child: CircularProgressIndicator.adaptive());
              }, error: (error, stackTrace) {
                logger.f("error : $error");
                if (error == "404") {
                  return Center(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Center(
                              child: Text(
                                "Register as a Volunteer",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: AppSize.km,
                            ),
                            const Text(
                              "You can become a part of our team by registering as a volunteer. You can help us in organizing events, spreading awareness, and many more. We will be happy to have you as a part of our team.\n \nPlease fill the details below for the timeframe you want to be registered for.",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
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
                                      lastDate: DateTime.now()
                                          .add(const Duration(days: 365)),
                                    );
                                    if (pickedDate != null) {
                                      /*  return "${picked.year}-${picked.month}-${picked.day}"; */
                                      startDate.value = pickedDate;
                                    }
                                  },
                                  child: const Card(
                                    elevation: 4,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Text("Select Start Date"),
                                          SizedBox(
                                            height: AppSize.ks,
                                          ),
                                          Icon(Icons.calendar_today,
                                              size: 20, color: Colors.blue),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
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
                                  child: const Card(
                                    elevation: 4,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Text("Select End Date"),
                                          SizedBox(
                                            height: AppSize.ks,
                                          ),
                                          Icon(Icons.calendar_today,
                                              size: 20, color: Colors.blue),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: AppSize.km,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Selected Start Date: ${startDate.value.day}/${startDate.value.month}/${startDate.value.year}",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: AppSize.ks),
                                Text(
                                  "Selected End Date: ${endDate.value.day}/${endDate.value.month}/${endDate.value.year}",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: AppSize.km,
                            ),
                            CheckboxListTile(
                              value: isChecked.value,
                              onChanged: (value) {
                                isChecked.value = value!;
                              },
                              title: const Text(
                                  "I agree to server as a volunteer for the selected time-frame."),
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
                                                          .authState.userId!),
                                                  userType: null,
                                                  startDate:
                                                      startDate.value.toUtc(),
                                                  endDate:
                                                      endDate.value.toUtc(),
                                                  status: null);

                                          try {
                                            isLoading.value = true;
                                            await ref
                                                .read(
                                                    volunteerRepositoryProvider)
                                                .postVolunteer(
                                                    volunteerPostModel)
                                                .then((value) async {
                                              isLoading.value = false;
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                  content: Text(
                                                      "You have successfully registered as a volunteer."),
                                                ),
                                              );

                                              Navigator.pushAndRemoveUntil(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const PatientDashboardPage()),
                                                  (route) => false);
                                            });
                                          } on Exception catch (e) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                content: Text(
                                                    "An error occured while registering as a volunteer. Please try again later."),
                                              ),
                                            );
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
                                child: const Text("Register as a Volunteer"),
                              ),
                            )
                          ],
                        ),
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
            : const Center(child: CircularProgressIndicator.adaptive()));
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