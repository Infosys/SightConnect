import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_triage_steps/presentation/widgets/eye_assessment_ques_three.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

List<Map<String, dynamic>> symptoms = [
  {'one': 'Coloured Haloes', 'two': '', "isSelected": false},
  {'one': 'Curtain like appearances', 'two': '', "isSelected": false},
  {'one': 'Decreased vision', 'two': '', "isSelected": false},
  {'one': 'Double vision\nChronic condition', 'two': '', "isSelected": false},
  {'one': 'Difficulty looking at light', 'two': '', "isSelected": false},
  {'one': 'Waviness of vision', 'two': '', "isSelected": false},
  {'one': 'Flashes of light', 'two': '', "isSelected": false},
  {'one': 'Floaters\nseeing dark spots', 'two': '', "isSelected": false},
  {'one': 'Loss of field of vision', 'two': '', "isSelected": false},
];

class EyeAssessementQuesTwo extends StatefulWidget {
  const EyeAssessementQuesTwo({super.key});

  @override
  State<EyeAssessementQuesTwo> createState() => _EyeAssessementQuesTwoState();
}

class _EyeAssessementQuesTwoState extends State<EyeAssessementQuesTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kScaffold,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColor.kBlue,
                visualDensity: VisualDensity.compact,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.kspadding + 2,
                ),
              ),
              onPressed: () {},
              child: Text(
                "Step 1 of 3",
                style: applyRobotoFont(
                  color: AppColor.kPrimary,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(width: AppSize.kmwidth),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text("Eye Assessment"),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2. Is your vision not clear or disturbed? Choose the symptoms you are facing.",
                style: applyFiraSansFont(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 40),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: symptoms.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2.5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        symptoms[index]['isSelected'] =
                            !symptoms[index]['isSelected'];
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: symptoms[index]['isSelected']
                              ? AppColor.kPrimary
                              : AppColor.kGrey,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "${symptoms[index]['one']}",
                          textAlign: TextAlign.center,
                          style: applyRobotoFont(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: symptoms[index]['isSelected']
                                ? AppColor.kPrimary
                                : AppColor.kBlack,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 10,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const EyeAssessementQuesThree(),
                      fullscreenDialog: true,
                    ),
                  );
                },
                child: Text(
                  "Next",
                  style: applyRobotoFont(fontSize: 12, color: AppColor.kWhite),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
