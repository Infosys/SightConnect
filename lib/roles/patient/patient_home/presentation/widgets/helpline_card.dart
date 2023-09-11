import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class HelplineCard extends StatelessWidget {
  const HelplineCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(AppSize.kmpadding),
            decoration: BoxDecoration(
              color: AppColor.kWhite,
              borderRadius: BorderRadius.circular(AppSize.kmwidth),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.phone_outlined,
                  color: AppColor.kBlue,
                ),
                const SizedBox(
                  width: AppSize.kswidth,
                ),
                Column(
                  children: [
                    Text(
                      "Toll Free Number",
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "1800 1800 1800",
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.only(
              left: AppSize.width(context) * 0.02,
              right: AppSize.width(context) * 0.02,
            ),
            child: const CircleAvatar(
              radius: 20,
              backgroundColor: AppColor.kWhite,
              child: Icon(
                Icons.phone_outlined,
                color: AppColor.kBlue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
