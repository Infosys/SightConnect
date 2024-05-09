import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../provider/patient_result_provider.dart';

class TumblingResultPageTopCard extends ConsumerWidget {
  const TumblingResultPageTopCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 0,
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppSize.width(context) * 0.05,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColor.lightGrey.withOpacity(0.4),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: AppSize.width(context) * 0.29,
                    child: Text(
                      "Raghavi Pandey",
                      style: applyRobotoFont(
                          fontSize: 14, fontWeight: FontWeight.w600),
                      softWrap: true,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "AID: EA 010101",
                    softWrap: true,
                    style: applyRobotoFont(
                        fontSize: 11, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50),
            padding:
                const EdgeInsets.only(right: 12, left: 12, top: 25, bottom: 14),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColor.orange.withOpacity(0.2),
                  offset: const Offset(0, 2),
                  blurRadius: 20,
                  spreadRadius: 20,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              color: AppColor.white,
              border: const Border.symmetric(
                horizontal: BorderSide(
                  color: AppColor.orange,
                  width: 2,
                ),
                vertical: BorderSide(
                  color: AppColor.orange,
                  width: 1,
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Patient consistently identifies the orientation of most “E” letters but struggles with a few.",
                  textAlign: TextAlign.left,
                  softWrap: true,
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "19 Sep 2023",
                      style: applyRobotoFont(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSize.width(context) * 0.01,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.altGrey.withOpacity(0.6),
                        ),
                        child: Text(
                          "66% Complete",
                          style: applyRobotoFont(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: AppColor.black),
                        )),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: -15,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(0, 2),
                    blurRadius: 4,
                    spreadRadius: 0,
                  ),
                ],
                borderRadius: BorderRadius.circular(100),
                color: AppColor.white,
                border: Border.all(
                  color: AppColor.white,
                  width: 4,
                ),
              ),
              child: const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                  AppImages.raghavi,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
