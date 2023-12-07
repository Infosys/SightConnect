import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';

import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class ResultPageTopCard extends StatelessWidget {
  const ResultPageTopCard({
    super.key,
    required this.triageResult,
    required this.name,
    required this.id,
  });
  final Map<String, dynamic> triageResult;
  final String name;
  final String id;
  @override
  Widget build(BuildContext context) {
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
                      name,
                      style: applyRobotoFont(
                          fontSize: 14, fontWeight: FontWeight.w600),
                      softWrap: true,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "AID: $id",
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
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: triageResult['color'].withOpacity(0.2),
                  offset: const Offset(0, 2),
                  blurRadius: 20,
                  spreadRadius: 20,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              color: AppColor.white,
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: triageResult['color'],
                  width: 2,
                ),
                vertical: BorderSide(
                  color: triageResult['color'],
                  width: 1,
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSize.width(context) * 0.01,
                        ),
                        decoration: BoxDecoration(
                          color: triageResult['color'],
                        ),
                        child: Text(
                          triageResult['labelText'] ?? "",
                          style: applyRobotoFont(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: AppColor.white),
                        )),
                    const Spacer(),
                    Text(
                      triageResult['urgency'] ?? "",
                      style: applyRobotoFont(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  triageResult['issueInfo'],
                  textAlign: TextAlign.left,
                  softWrap: true,
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                )
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
