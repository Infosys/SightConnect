import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
// import 'dart:js';

class TimelineProfile extends StatelessWidget {
  const TimelineProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(AppSize.kspadding),
        decoration: BoxDecoration(
          boxShadow: applyLightShadow(),
          image: const DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage(AppImages.profileBg),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.klradius),
          ),
        ),
        child: Wrap(direction: Axis.horizontal, children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              width: Responsive.isTablet(context)?AppSize.klwidth*18:AppSize.width(context)/2,
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(130),
                  child: Image.asset(
                    AppImages.raghavi,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
                  child: Text(
                    "Preethan Kumar",
                    style: applyFiraSansFont(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: AppColor.white),
                  ),
                ),
                subtitle: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
                  child: Text(
                    "PID: OP 5356785",
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.white.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Wrap(
                  direction: Axis.vertical,
                  spacing: 10,
                  children: [
                    Row(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(AppSize.kspadding),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white12,
                            ),
                            child: const Icon(
                              Icons.call_outlined,
                              color: Colors.white,
                              size: 18,
                            )),
                        SizedBox(
                          width: AppSize.ksheight,
                        ),
                        Text("9876543210",
                            softWrap: true,
                            style: applyRobotoFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.white.withOpacity(0.8),
                            )),
                      ],
                    ),
                    const SizedBox(
                      width: AppSize.ksheight,
                    ),
                    Row(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(AppSize.kspadding),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white12,
                            ),
                            child: const Icon(
                              Icons.email,
                              color: Colors.white,
                              size: 18,
                            )),
                        SizedBox(
                          width: AppSize.kswidth,
                        ),
                        Text("SumantaC@gmail.com",
                            softWrap: true,
                            style: applyRobotoFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.white.withOpacity(0.8),
                            )),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: AppSize.kswidth * 2,
            ),
            ElevatedButton(onPressed: () {}, child: Text("View Family"))
          ])
        ]));
  }
}
