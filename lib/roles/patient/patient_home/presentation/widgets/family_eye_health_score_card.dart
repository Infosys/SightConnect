import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class FamilyEyeHealthScoreCard extends StatelessWidget {
  const FamilyEyeHealthScoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(AppSize.kspadding),
      decoration: BoxDecoration(
        color: AppColor.kWhite,
        borderRadius: BorderRadius.circular(AppSize.ksradius),
        boxShadow: const [],
      ),
      width: AppSize.width * 0.5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              const CircleAvatar(
                maxRadius: 20,
                minRadius: 15,
                backgroundImage: AssetImage(
                  "assets/images/doctor.png",
                ),
              ),
              const SizedBox(
                width: AppSize.kswidth,
              ),
              Text(
                "Ragavan Kumar",
                style: applyRobotoFont(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: AppSize.ksheight,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                constraints: const BoxConstraints(
                  maxHeight: 45,
                  maxWidth: 45,
                  minHeight: 30,
                  minWidth: 30,
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      value: 0.3,
                      backgroundColor: AppColor.kGrey.withOpacity(0.7),
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(AppColor.kRed),
                      strokeCap: StrokeCap.round,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text("30%"),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: AppSize.kswidth,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "6/20",
                      style: applyFiraSansFont(
                        fontSize: 18,
                        color: AppColor.kRed,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Left eye - Consider surgery, your vision deteriorating",
                      textAlign: TextAlign.right,
                      style: applyRobotoFont(fontSize: 10),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
