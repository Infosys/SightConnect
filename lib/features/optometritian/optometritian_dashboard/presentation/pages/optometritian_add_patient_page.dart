import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_triage/presentation/pages/optometritian_triage_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_h.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OptometricianAddPatientPage extends HookWidget {
  const OptometricianAddPatientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final patientIdController = useTextEditingController();
    final educationalQualificationController = useTextEditingController();
    final professionController = useTextEditingController();
    final isAssistanceNeeded = useState<bool>(false);
    final isButtonEnabled = useState<bool>(false);

    useEffect(() {
      listener() {
        final patientId = patientIdController.text;
        final validPatientId = RegExp(r'^[0-9a-zA-Z]+$').hasMatch(patientId);
        isButtonEnabled.value = validPatientId;
      }

      patientIdController.addListener(listener);
      return () {
        patientIdController.removeListener(listener);
      };
    }, const []);

    final educationalQualifications = [
      'Not applicable (Children <= 5years)',
      'No Education',
      'High School',
      'Primary Education (Class 1 - 5)',
      'High School (Class 6 - 10)',
      'Intermediate (Class 11 - 12)',
      'College (Undergraduate)',
      'Advance Studies (PG etc)',
      'Others (Please specify)'
    ];

    final professions = [
      'Not applicable (Children <= 5 years)',
      'Student / trainee',
      'Employed with regular emoluments',
      'Skilled Labour (Carpenter / Goldsmith etc)',
      'Unskilled Labour (Construction/ Industry etc)',
      'Self Enterprise / Business / Vendor',
      'Land property owner not doing job for remuneration',
      'Agriculture',
      'Unemployed/ Home duties/ Retired/stopped due to Old age',
      'Others (Please specify)',
    ];

    String? selectedEducationalQualification;
    String? selectedProfession;

    void showOtherQualificationBottomSheet() {
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: Colors.transparent,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (BuildContext context,
                void Function(void Function()) setState) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.klradius),
                child: Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: AppSize.height(context) * 0.7,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Other Qualifications",
                        style: applyRobotoFont(
                          fontSize: 16,
                          color: AppColor.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        color: const Color(0xFFFAFAFA),
                        child: TextField(
                          style: const TextStyle(
                            fontFamily: 'Roboto',
                          ),
                          maxLines: 6,
                          keyboardType: TextInputType.text,
                          onChanged: (value) {
                            selectedEducationalQualification = value;

                            setState(() {});
                          },
                          decoration: InputDecoration(
                              hintText: 'Enter details here',
                              hintStyle: applyRobotoFont(
                                  fontSize: 14,
                                  color: AppColor.grey.withOpacity(0.4))),
                        ),
                      ),
                      const SizedBox(
                        height: AppSize.klheight,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  if (educationalQualificationController
                                      .text.isNotEmpty) {
                                    educationalQualificationController.text =
                                        selectedEducationalQualification!;
                                    Navigator.pop(context);
                                  }
                                },
                                child: const Text("Update"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      );
    }

    void showOtherProfessionBottomSheet() {
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: Colors.transparent,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (BuildContext context,
                void Function(void Function()) setState) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.klradius),
                child: Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: AppSize.height(context) * 0.7,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Other Profession",
                          style: applyRobotoFont(
                              fontSize: 16,
                              color: AppColor.black,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        color: const Color(0xFFFAFAFA),
                        child: TextField(
                          style: const TextStyle(
                            fontFamily: 'Roboto',
                          ),
                          maxLines: 6,
                          keyboardType: TextInputType.text,
                          onChanged: (value) {
                            selectedProfession = value;
                            setState(() {});
                          },
                          decoration: InputDecoration(
                              hintText: 'Enter details here',
                              hintStyle: applyRobotoFont(
                                  fontSize: 14,
                                  color: AppColor.grey.withOpacity(0.4))),
                        ),
                      ),
                      const SizedBox(
                        height: AppSize.klheight,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  if (professionController.text.isNotEmpty) {
                                    professionController.text =
                                        selectedProfession!;
                                    Navigator.pop(context);
                                  }
                                },
                                child: const Text("Update"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      );
    }

    void showEducationalQualificationBottomSheet() {
      showModalBottomSheet(
        useSafeArea: true,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        showDragHandle: true,
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder:
              (BuildContext context, void Function(void Function()) setState) {
            return Container(
              height: AppSize.height(context) * 0.7,
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Educational Qualification",
                    style: applyRobotoFont(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.kmpadding),
                  SizedBox(
                    height: AppSize.height(context) * 0.52,
                    child: ListView.builder(
                      itemCount: educationalQualifications.length,
                      itemBuilder: (BuildContext context, int index) {
                        final educationalQualification =
                            educationalQualifications[index];
                        return RadioListTile<String>(
                          toggleable: true,
                          visualDensity: const VisualDensity(vertical: -2),
                          contentPadding: EdgeInsets.zero,
                          title: Text(educationalQualification),
                          value: educationalQualification,
                          groupValue: selectedEducationalQualification,
                          onChanged: (value) {
                            selectedEducationalQualification = value;
                            educationalQualificationController.text =
                                selectedEducationalQualification!;

                            if (value == "Others (Please specify)") {
                              Navigator.pop(context);
                              showOtherQualificationBottomSheet();
                            }
                            setState(() {});
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          });
        },
      );
    }

    void showProfessionBottomSheet() {
      showModalBottomSheet(
        useSafeArea: true,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        showDragHandle: true,
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder:
              (BuildContext context, void Function(void Function()) setState) {
            return Container(
              height: AppSize.height(context) * 0.7,
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Profession",
                    style: applyRobotoFont(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.kmpadding),
                  SizedBox(
                    height: AppSize.height(context) * 0.52,
                    child: ListView.builder(
                      itemCount: professions.length,
                      itemBuilder: (BuildContext context, int index) {
                        final proffesion = professions[index];
                        return RadioListTile<String>(
                          toggleable: true,
                          visualDensity: const VisualDensity(vertical: -2),
                          contentPadding: EdgeInsets.zero,
                          title: Text(proffesion),
                          value: proffesion,
                          groupValue: selectedProfession,
                          onChanged: (value) {
                            selectedProfession = value;
                            professionController.text = selectedProfession!;
                            if (value == "Others (Please specify)") {
                              Navigator.pop(context);
                              showOtherProfessionBottomSheet();
                            }
                            setState(() {});
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          });
        },
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppbar(
        title: const Text("Start Assessment"),
        centerTitle: false,
        leadingIcon: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios_rounded)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: AppColor.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Add Patient Information",
                        style: applyRobotoFont(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                        ),
                        controller: patientIdController,
                        validator: (value) {
                          if (patientIdController.text.isEmpty) {
                            return "Patient ID cannot be empty";
                          } else if (RegExp(r'^[0-9a-zA-Z]+$')
                              .hasMatch(patientIdController.text)) {
                            return "Patient ID can only contain alphabets and numbers";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "Patient ID",
                          labelStyle: applyRobotoFont(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                        ),
                        readOnly: true,
                        controller: educationalQualificationController,
                        decoration: InputDecoration(
                          labelText: "Educational Qualification",
                          labelStyle: applyRobotoFont(
                            fontSize: 14,
                          ),
                          suffixIcon: IconButton(
                            icon: const Icon(CupertinoIcons.chevron_down),
                            onPressed: showEducationalQualificationBottomSheet,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                        ),
                        readOnly: true,
                        controller: professionController,
                        decoration: InputDecoration(
                          labelText: "Profession",
                          labelStyle: applyRobotoFont(
                            fontSize: 14,
                          ),
                          suffixIcon: IconButton(
                            icon: const Icon(CupertinoIcons.chevron_down),
                            onPressed: showProfessionBottomSheet,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Does the Patient need assistance?",
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    CupertinoSwitch(
                      activeColor: AppColor.primary,
                      value: isAssistanceNeeded.value,
                      onChanged: (value) {
                        isAssistanceNeeded.value = value;
                      },
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ElevatedButton(
                        onPressed: isButtonEnabled.value
                            ? () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const OptometritianTriagePage(),
                                  ),
                                );
                              }
                            : null,
                        child: const Text("Start Assessment"),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
