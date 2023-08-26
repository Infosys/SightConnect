import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FamilyEyeHealthScoreCard extends StatelessWidget {
  const FamilyEyeHealthScoreCard({super.key, required this.data});
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(AppSize.kmpadding),
      decoration: BoxDecoration(
        color: AppColor.kWhite,
        borderRadius: BorderRadius.circular(AppSize.ksradius),
      ),
      width: AppSize.width * 0.5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              CircleAvatar(
                maxRadius: 20,
                minRadius: 15,
                child: data["image"] != null
                    ? Image.asset(
                        data["image"]!,
                      )
                    : const SizedBox(),
              ),
              const SizedBox(
                width: AppSize.kswidth,
              ),
              Text(
                data["name"] ?? "",
                style: applyRobotoFont(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSize.ksheight),
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
                      value: data["percentage"],
                      strokeWidth: 6,
                      backgroundColor: AppColor.kGrey.withOpacity(0.3),
                      valueColor: data["percentage"] > 0.7
                          ? const AlwaysStoppedAnimation<Color>(AppColor.kGreen)
                          : const AlwaysStoppedAnimation<Color>(AppColor.kRed),
                      strokeCap: StrokeCap.round,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "${data["percentage"] * 100}%",
                        style: applyRobotoFont(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: data["percentage"] > 0.7
                              ? AppColor.kGreen
                              : AppColor.kGrey.withOpacity(0.7),
                        ),
                      ),
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
                      data["score"] ?? "",
                      style: applyFiraSansFont(
                        fontSize: 18,
                        color: data["percentage"] > 0.7
                            ? AppColor.kGreen
                            : AppColor.kRed,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      data["description"] ?? "",
                      textAlign: TextAlign.right,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          applyRobotoFont(fontSize: 10, color: AppColor.kGrey),
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
