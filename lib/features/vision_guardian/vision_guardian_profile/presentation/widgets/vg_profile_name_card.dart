import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VgProfileNameCard extends StatelessWidget {
  const VgProfileNameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Row(children: [
        SizedBox(
          width: AppSize.width(context) * 0.3,
          height: 120,
          child: Container(color: AppColor.primary),
        ),
        Container(
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Radhavi Pandey",
                style:
                    applyRobotoFont(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: AppSize.kmheight,
              ),
              Text(
                "ABCD 1234 1234 1234",
                style:
                    applyRobotoFont(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: AppSize.kmheight,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Gender",
                        style: applyRobotoFont(
                            fontSize: 10, color: AppColor.darkGrey),
                      ),
                      const SizedBox(
                        height: AppSize.ksheight / 2,
                      ),
                      Text(
                        "Female",
                        style: applyRobotoFont(fontSize: 14),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: AppSize.kmwidth,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mobile",
                        style: applyRobotoFont(
                            fontSize: 10, color: AppColor.darkGrey),
                      ),
                      const SizedBox(
                        height: AppSize.ksheight / 2,
                      ),
                      Text(
                        "8719782828",
                        style: applyRobotoFont(fontSize: 14),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
