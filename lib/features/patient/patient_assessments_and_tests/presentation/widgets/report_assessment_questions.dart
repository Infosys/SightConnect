import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class ReportAssessmentQuestions extends StatelessWidget {
  const ReportAssessmentQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> data = [
      {"question": "Are you facing sudden loss of vision?", "answer": "No"},
      {
        "question":
            "Do you have pain or discomfort while viewing bright light?",
        "answer": "Yes"
      },
      {
        "question":
            "Do you see wavy lines or irregular shapes when viewing straight images?",
        "answer": "No"
      },
      {"question": "Do you see two images of a viewed object?", "answer": "No"},
      {
        "question": "Do you see halos or colored rings around lights?",
        "answer": "Yes"
      }
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Assessment Questions",
            style: applyRobotoFont(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
            itemCount: data.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              var currentData = data[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currentData['question'],
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "\u2022  ",
                          style: applyRobotoFont(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.7),
                              height: 1.5),
                        ),
                        Text(
                          currentData['answer'],
                          style: applyRobotoFont(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Divider(
                      thickness: 1.5,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
