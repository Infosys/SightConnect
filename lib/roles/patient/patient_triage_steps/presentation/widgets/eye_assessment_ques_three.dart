import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/pages/tumbling_test_instructional_video_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

List<Map<String, dynamic>> symptoms = [
  {
    'one': 'Watering of eye',
    'two': '',
    "isSelected": false,
  },
  {
    'one': 'Redness of eye',
    'two': '',
    "isSelected": false,
  },
  {
    'one': 'Discharge/stickiness of eye',
    'two': '',
    "isSelected": false,
  },
  {
    'one': 'White spots in the black part of the eye',
    'two': 'Chronic condition',
    "isSelected": false,
  },
  {
    'one': 'Irritation',
    'two': '',
    "isSelected": false,
  },
  {
    'one': 'Burning of eye',
    'two': '',
    "isSelected": false,
  },
  {
    'one': 'Pain',
    'two': '',
    "isSelected": false,
  },
  {
    'one': 'Foreign body sensation',
    'two': 'seeing dark spots',
    "isSelected": false,
  },
  {
    'one': 'Twitching of eye',
    'two': '',
    "isSelected": false,
  },
  {
    'one': 'Frequent blinking',
    'two': '',
    "isSelected": false,
  },
  {
    'one': 'Deviation of eyes',
    'two': '',
    "isSelected": false,
  },
  {
    'one': 'Squeezing of eyes',
    'two': '',
    "isSelected": false,
  },
  {
    'one': 'Drooping of eyes',
    'two': 'Chronic condition',
    "isSelected": false,
  },
  {
    'one': 'Bulging of eyes',
    'two': '',
    "isSelected": false,
  },
  {
    'one': 'Difference in size of eyes',
    'two': '',
    "isSelected": false,
  },
];

class EyeAssessementQuesThree extends StatefulWidget {
  const EyeAssessementQuesThree({super.key});

  @override
  State<EyeAssessementQuesThree> createState() =>
      _EyeAssessementQuesThreeState();
}

class _EyeAssessementQuesThreeState extends State<EyeAssessementQuesThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  horizontal: AppSize.kmpadding,
                  vertical: AppSize.kmpadding,
                ),
              ),
              onPressed: () {},
              child: const Text("Step 1 of 3"),
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
              const Text(
                  "3. Are you experiencing any of the below changes in your eye?"),
              const SizedBox(height: 40),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: symptoms.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2,
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
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: AppSize.width(context) * 0.4,
                      height: AppSize.height(context) * 0.08,
                      child: Center(
                        child: Text(
                          "${symptoms[index]['one']}\n${symptoms[index]['two']}",
                          textAlign: TextAlign.center,
                          style: applyRobotoFont(
                            color: symptoms[index]['isSelected']
                                ? AppColor.kPrimary
                                : AppColor.kGrey,
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
                      builder: (context) =>
                          const TumblingTestInstructionalVideoPage(),
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
