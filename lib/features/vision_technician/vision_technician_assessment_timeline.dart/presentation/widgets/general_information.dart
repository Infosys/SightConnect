import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
// import 'dart:js';

class GeneralInformation extends StatelessWidget {
  const GeneralInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.all(
              Radius.circular(AppSize.kmradius - 5),
            )),
        padding: const EdgeInsets.all(AppSize.klpadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "General Information",
              style: applyFiraSansFont(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: AppSize.klheight,
            ),
            Wrap(
                runSpacing: 10,
                spacing: 100,
                direction: Axis.horizontal,
                children: [
                  Wrap(
                    spacing: AppSize.kmpadding,
                    children: [
                      Text(
                        "Date of Birth",
                        style: applyFiraSansFont(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: AppSize.ksheight),
                      Text("15 May 1983 (28 years)",
                          style: applyRobotoFont(
                            fontWeight: FontWeight.w400,
                            color: AppColor.grey,
                            fontSize: 14,
                          )),
                    ],
                  ),
                  Wrap(
                    spacing: AppSize.kmpadding,
                    children: [
                      Text(
                        "Gender",
                        style: applyFiraSansFont(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: AppSize.ksheight),
                      Text(
                        "Male",
                        style: applyRobotoFont(
                          fontWeight: FontWeight.w400,
                          color: AppColor.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    spacing: AppSize.kmpadding + 20,
                    children: [
                      Text(
                        "Address",
                        style: applyFiraSansFont(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: AppSize.ksheight),
                      Text(
                        "503/11 Khairtabad, Hyferabad, Telangana",
                        style: applyRobotoFont(
                          fontWeight: FontWeight.w400,
                          color: AppColor.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ]),
          ],
        ));
  }
}
