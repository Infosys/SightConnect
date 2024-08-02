import 'package:eye_care_for_all/apps/eyebank/features/case_register/presentation/widget/add_case_button.dart';
import 'package:eye_care_for_all/apps/eyebank/features/screening/presentation/pages/eb_screening_page.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class EBCaseRegisterPage extends StatelessWidget {
  const EBCaseRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColor.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Case Registration',
                    style: applyRobotoFont(
                      color: AppColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const AddCaseButton()
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: double.infinity,
              height: 800,
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Text(
                    'No Cases Found',
                    style: applyRobotoFont(
                      color: AppColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EbScreeningPage(
                              title: 'Screening',
                              caseID: '1234',
                            ),
                          ),
                        );
                      },
                      icon: const Icon(Icons.control_point)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
