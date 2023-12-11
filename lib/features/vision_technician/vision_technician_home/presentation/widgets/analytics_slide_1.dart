import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnalyticsSlide1 extends StatelessWidget {
  const AnalyticsSlide1({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: AppSize.kmpadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: width < 850
                ? AppSize.width(context) * 0.4
                : AppSize.width(context) * 0.45,
            padding: const EdgeInsets.all(AppSize.kmpadding),
            decoration: boxDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Patients Added",
                  style: applyFiraSansFont(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "60",
                                style: applyFiraSansFont(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 32,
                                ),
                              ),
                              Text(
                                "IVR Calls",
                                style: applyRobotoFont(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: AppColor.grey,
                                ),
                              ),
                            ],
                          ),
                          //add graph here
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "72",
                                style: applyFiraSansFont(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 32,
                                ),
                              ),
                              Text(
                                "Clinic Visits",
                                style: applyRobotoFont(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: AppColor.grey,
                                ),
                              ),
                            ],
                          ),
                          //add graph here
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: width < 850
                ? AppSize.width(context) * 0.25
                : AppSize.width(context) * 0.22,
            padding: const EdgeInsets.all(AppSize.kmpadding),
            decoration: boxDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Cases Closed",
                  style: applyFiraSansFont(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "14",
                            style: applyFiraSansFont(
                                fontWeight: FontWeight.w500,
                                fontSize: 32,
                                color: AppColor.red),
                          ),
                          Text(
                            "Critical",
                            style: applyRobotoFont(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: AppColor.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "8",
                            style: applyFiraSansFont(
                              fontWeight: FontWeight.w500,
                              fontSize: 32,
                              color: AppColor.green,
                            ),
                          ),
                          Text(
                            "Regular",
                            style: applyRobotoFont(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: AppColor.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: width < 850
                ? AppSize.width(context) * 0.25
                : AppSize.width(context) * 0.22,
            padding: const EdgeInsets.all(AppSize.kmpadding),
            decoration: boxDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Avg. Closure Time",
                  style: applyFiraSansFont(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1wk",
                            style: applyFiraSansFont(
                              fontWeight: FontWeight.w500,
                              fontSize: 32,
                              color: AppColor.red,
                            ),
                          ),
                          Text(
                            "Critical",
                            style: applyRobotoFont(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: AppColor.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "3d",
                            style: applyFiraSansFont(
                              fontWeight: FontWeight.w500,
                              fontSize: 32,
                              color: AppColor.green,
                            ),
                          ),
                          Text(
                            "Regular",
                            style: applyRobotoFont(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: AppColor.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final boxDecoration = BoxDecoration(
  color: AppColor.white,
  borderRadius: BorderRadius.circular(AppSize.kmradius),
  boxShadow: applyLightShadow(),
);
