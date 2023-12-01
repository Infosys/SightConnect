import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
// import 'dart:js';

class PreliminaryAssessmentCard extends StatelessWidget {
  const PreliminaryAssessmentCard({super.key});

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
      child: Wrap(
        direction: Axis.horizontal,
        children: [
          Wrap(
           direction: Axis.horizontal,
            children: [
              const CircleAvatar(radius: AppSize.klradius),
              const SizedBox(width: AppSize.kswidth),
              Wrap(
               direction: Axis.vertical,
                children: [
                  Text(
                    "Sumanta Chaudhury",
                    style: applyFiraSansFont(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  Text(
                    "OP 934567",
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w400,
                      color: AppColor.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(width: AppSize.kswidth * 3),
          Wrap(
              direction: Axis.vertical,
              spacing: AppSize.ksheight,
              children: [
                Wrap(spacing: AppSize.kmwidth * 5, children: [
                  Wrap(
                   direction: Axis.vertical,
                    children: [
                      Text(
                        "Age",
                        style: applyFiraSansFont(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: AppSize.ksheight),
                      Text("40",
                          style: applyRobotoFont(
                            fontWeight: FontWeight.w400,
                            color: AppColor.grey,
                            fontSize: 14,
                          )),
                    ],
                  ),
                  Wrap(
                   direction: Axis.vertical,
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
                   direction: Axis.vertical,
                    children: [
                      Text(
                        "Vison Center",
                        style: applyFiraSansFont(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: AppSize.ksheight),
                      Text(
                        "LVPEI Vison Center",
                        style: applyRobotoFont(
                          fontWeight: FontWeight.w400,
                          color: AppColor.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ]),
                Wrap(
                  direction: Axis.vertical,
                  children: [
                    Text(
                      "Address",
                      style: applyFiraSansFont(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: AppSize.ksheight),
                    Text(
                      "503/11 Khairtabad, Hyderabad, Telangana",
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
      ),
    );
  }
}
