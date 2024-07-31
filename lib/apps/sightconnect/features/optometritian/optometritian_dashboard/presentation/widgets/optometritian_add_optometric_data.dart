import 'package:eye_care_for_all/apps/sightconnect/features/optometritian/optometritian_dashboard/presentation/widgets/eye_drop_down_field.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class VgAddOptoData extends HookWidget {
  const VgAddOptoData({super.key});

  @override
  Widget build(BuildContext context) {
    var isRoutineAssessment = useState<bool>(false);
    var isEarlyAssessment = useState<bool>(false);
    var isUrgentAssessment = useState<bool>(false);
    var isRoutineVisual = useState<bool>(false);
    var isEarlyVisual = useState<bool>(false);
    var isUrgentVisual = useState<bool>(false);

    return Scaffold(
      appBar: const CustomAppbar(
        leadingIcon: Icon(Icons.arrow_back_ios),
        centerTitle: false,
        title: Row(
          children: [
            Text('Add Optometric Data'),
            Spacer(),
            Text("Skip", style: TextStyle(color: AppColor.primary))
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Start In-App Test'),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.white,
                side: const BorderSide(width: 1.0, color: AppColor.blue),
              ),
              onPressed: () {},
              child: const Text('Save & Exit',
                  style: TextStyle(color: AppColor.blue)),
            ),
          ),
        ]),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColor.blue.withOpacity(0.45),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'OP 4567890',
                            style: applyRobotoFont(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          const Spacer(),
                          Text(
                            'Test ID:1234567891',
                            style: applyRobotoFont(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'Raghavi Pandey, Graduate Diploma,Female,22 years',
                            style: applyRobotoFont(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  )),
              const SizedBox(height: 10),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Assessment Report",
                          style: applyFiraSansFont(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                      const SizedBox(height: 14),
                      TextField(
                        style: applyRobotoFont(
                            fontSize: 14, fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                            labelText: 'Observation',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 0.0),
                            labelStyle: applyRobotoFont(
                                fontSize: 12, color: AppColor.grey)),
                        maxLines: null,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Select Category",
                        style: applyRobotoFont(
                            fontSize: 14,
                            color: AppColor.black,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 10),
                      Row(children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              isRoutineAssessment.value =
                                  !isRoutineAssessment.value;
                              isEarlyAssessment.value = false;
                              isUrgentAssessment.value = false;
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: isRoutineAssessment.value
                                    ? AppColor.altGreen
                                    : AppColor.white,
                                border: Border.all(
                                  color: isRoutineAssessment.value
                                      ? AppColor.altGreen
                                      : AppColor.primary,
                                  width: 1.5,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Routine Consult',
                                  style: applyRobotoFont(
                                    fontSize: 12,
                                    color: isRoutineAssessment.value
                                        ? AppColor.white
                                        : AppColor.primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              isEarlyAssessment.value =
                                  !isEarlyAssessment.value;
                              isRoutineAssessment.value = false;
                              isUrgentAssessment.value = false;
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: isEarlyAssessment.value
                                    ? AppColor.orange
                                    : AppColor.white,
                                border: Border.all(
                                  color: isEarlyAssessment.value
                                      ? AppColor.orange
                                      : AppColor.primary,
                                  width: 1.5,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Early Consult',
                                  style: applyRobotoFont(
                                    fontSize: 12,
                                    color: isEarlyAssessment.value
                                        ? AppColor.white
                                        : AppColor.primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              isUrgentAssessment.value =
                                  !isUrgentAssessment.value;
                              isRoutineAssessment.value = false;
                              isEarlyAssessment.value = false;
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                  color: isUrgentAssessment.value
                                      ? AppColor.red
                                      : AppColor.primary,
                                  width: 1.5,
                                ),
                                color: isUrgentAssessment.value
                                    ? AppColor.red
                                    : AppColor.white,
                              ),
                              child: Center(
                                child: Text(
                                  'Urgent Consult',
                                  style: applyRobotoFont(
                                    fontSize: 12,
                                    color: isUrgentAssessment.value
                                        ? AppColor.white
                                        : AppColor.primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Visual Acuity Report",
                          style: applyFiraSansFont(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                      const SizedBox(height: 14),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text.rich(
                                TextSpan(
                                  text: 'OD',
                                  style: applyRobotoFont(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  children: const <TextSpan>[
                                    TextSpan(
                                        text: ' (Right Eye)',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: AppColor.grey)),
                                  ],
                                ),
                              ),
                              EyeNumberDropdown(
                                onChanged: (EyeNumber? value) {},
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text.rich(
                                TextSpan(
                                  text: 'OD',
                                  style: applyRobotoFont(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  children: const <TextSpan>[
                                    TextSpan(
                                        text: ' (Left Eye)',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: AppColor.grey)),
                                  ],
                                ),
                              ),
                              EyeNumberDropdown(
                                onChanged: (EyeNumber? value) {},
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text.rich(
                                TextSpan(
                                  text: 'Both Eyes',
                                  style: applyRobotoFont(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              EyeNumberDropdown(
                                onChanged: (EyeNumber? value) {},
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 14),
                      TextField(
                        style: applyRobotoFont(
                            fontSize: 14, fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                            labelText: 'Observation',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 0.0),
                            labelStyle: applyRobotoFont(
                                fontSize: 12, color: AppColor.grey)),
                        maxLines: null,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Select Category",
                        style: applyRobotoFont(
                            fontSize: 14,
                            color: AppColor.black,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 10),
                      Row(children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              isRoutineVisual.value = !isRoutineVisual.value;
                              isEarlyVisual.value = false;
                              isUrgentVisual.value = false;
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 8),
                              decoration: BoxDecoration(
                                color: isRoutineVisual.value
                                    ? AppColor.altGreen
                                    : AppColor.white,
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                  color: isRoutineVisual.value
                                      ? AppColor.altGreen
                                      : AppColor.primary,
                                  width: 1.5,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Routine Consult',
                                  style: applyRobotoFont(
                                    fontSize: 12,
                                    color: isRoutineVisual.value
                                        ? AppColor.white
                                        : AppColor.primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              isEarlyVisual.value = !isEarlyVisual.value;
                              isRoutineVisual.value = false;
                              isUrgentVisual.value = false;
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: isEarlyVisual.value
                                    ? AppColor.orange
                                    : AppColor.white,
                                border: Border.all(
                                  color: isEarlyVisual.value
                                      ? AppColor.orange
                                      : AppColor.primary,
                                  width: 1.5,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Early Consult',
                                  style: applyRobotoFont(
                                    fontSize: 12,
                                    color: isEarlyVisual.value
                                        ? AppColor.white
                                        : AppColor.primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              isUrgentVisual.value = !isUrgentVisual.value;
                              isRoutineVisual.value = false;
                              isEarlyVisual.value = false;
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: isUrgentVisual.value
                                    ? AppColor.red
                                    : AppColor.white,
                                border: Border.all(
                                  color: isUrgentVisual.value
                                      ? AppColor.red
                                      : AppColor.primary,
                                  width: 1.5,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Urgent Consult',
                                  style: applyRobotoFont(
                                    fontSize: 12,
                                    color: isUrgentVisual.value
                                        ? AppColor.white
                                        : AppColor.primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
