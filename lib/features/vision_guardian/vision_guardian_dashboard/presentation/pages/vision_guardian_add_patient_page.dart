import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_member_selection/pages/triage_steps_intro_page.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_questionnaire/pages/patient_triage_questionnaire_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_dashboard/presentation/provider/vision_guardian_add_patient_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianAddPatientPage extends ConsumerWidget {
  const VisionGuardianAddPatientPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(visionGuardianAddPatientProvider);
    return Scaffold(
      appBar: model.isSearching
          ? null
          : AppBar(
              title: const Text('Capture Patient Information'),
            ),
      body: SingleChildScrollView(
        child: model.isSearching
            ? Padding(
                padding: const EdgeInsets.all(AppSize.kmpadding),
                child: Column(
                  children: [
                    SizedBox(
                      height: AppSize.height(context) * 0.05,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 10,
                              ),
                              labelText: "Patient ID",
                              labelStyle: TextStyle(
                                fontSize: 14,
                                color: AppColor.black,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(AppSize.klradius),
                                ),
                              ),
                            ),
                            onChanged: (value) {
                              model.searchPatient(value);
                            },
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            model.stopSearch();
                          },
                          icon: const Icon(Icons.close),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: AppSize.klheight,
                    ),
                    model.searchPatientList.isEmpty
                        ? Column(
                            children: [
                              Image(
                                width: AppSize.width(context) * 0.5,
                                image: const AssetImage(
                                    "assets/images/search empty.png"),
                              ),
                              const SizedBox(
                                height: AppSize.klheight,
                              ),
                              Text(
                                "Sorry we couldn’t find any matches.\n Please try searching with other ID.",
                                style: applyRobotoFont(
                                  fontSize: 14,
                                  color: AppColor.grey,
                                ),
                              ),
                            ],
                          )
                        : Column(
                            children: model.searchPatientList
                                .map((e) => Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              AppSize.kmradius)),
                                      child: ListTile(
                                        title: Row(
                                          children: [
                                            Text(
                                              e.id!,
                                              style: applyRobotoFont(
                                                  fontSize: 14,
                                                  color: AppColor.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "  ${e.gender!} ${e.age!}",
                                              style: applyRobotoFont(
                                                fontSize: 12,
                                                color: AppColor.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                        trailing: Chip(
                                          padding: const EdgeInsets.all(0),
                                          backgroundColor:
                                              e.status == Status.complete
                                                  ? AppColor.green
                                                  : AppColor.orange,
                                          label: e.status == Status.complete
                                              ? const Text(
                                                  "Completed",
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                    color: AppColor.white,
                                                  ),
                                                )
                                              : const Text(
                                                  "Pending",
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                    color: AppColor.white,
                                                  ),
                                                ),
                                        ),
                                        subtitle: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: AppSize.klpadding),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                "Start In-app Test",
                                                style: applyRobotoFont(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColor.grey,
                                                ),
                                              ),
                                              Text("Physical Test Data",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: e.status ==
                                                            Status.complete
                                                        ? AppColor.grey
                                                        : AppColor.primary,
                                                  )),
                                              const SizedBox(),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ))
                                .toList(),
                          )
                  ],
                ),
              )
            : Center(
                child: Column(
                  children: [
                    Card(
                      elevation: 2,
                      child: Container(
                        padding: const EdgeInsets.all(AppSize.kmpadding),
                        width: AppSize.width(context) * 0.92,
                        height: AppSize.height(context) * 0.6,
                        child: Column(children: [
                          TextField(
                            onTap: () {
                              model.startSearch();
                            },
                            readOnly: true,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 10,
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: AppColor.primary,
                                ),
                              ),
                              labelText: "Patient ID",
                              labelStyle: applyRobotoFont(
                                fontSize: 14,
                                color: AppColor.black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          TextField(
                            keyboardType: TextInputType.name,
                            readOnly: true,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 10,
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: AppColor.primary,
                                ),
                              ),
                              labelText: "Education",
                              labelStyle: applyRobotoFont(
                                fontSize: 14,
                                color: AppColor.black,
                              ),
                              suffixIcon: const Icon(
                                Icons.keyboard_arrow_down,
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSize.klpadding),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PatientTriageQuestionnairePage(),
              ),
            );
          },
          child: const Text(
            'Start In-app Test',
          ),
        ),
      ),
    );
  }
}
