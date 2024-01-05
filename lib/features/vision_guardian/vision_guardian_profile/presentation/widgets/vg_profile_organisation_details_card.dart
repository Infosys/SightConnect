import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VgProfileOrganisationDetailsCard extends StatelessWidget {
  const VgProfileOrganisationDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(),
            Text(
              "Organisation Details",
              style:
                  applyFiraSansFont(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: AppSize.kmheight,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Escalating Manager",
                style: applyRobotoFont(fontSize: 12, color: AppColor.grey),
              ),
              Text(
                "Raghuram Kumar",
                style: applyRobotoFont(fontSize: 14, color: AppColor.darkGrey),
              ),
            ]),
            const SizedBox(
              height: AppSize.kmheight,
            ),
            Wrap(
              spacing: AppSize.width(context) / 7,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Org ID",
                    style: applyRobotoFont(fontSize: 12, color: AppColor.grey),
                  ),
                  Text(
                    "ORG 12345678",
                    style:
                        applyRobotoFont(fontSize: 14, color: AppColor.darkGrey),
                  ),
                ]),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Vision Center Code",
                    style: applyRobotoFont(fontSize: 12, color: AppColor.grey),
                  ),
                  Text(
                    "VC 12345678",
                    style:
                        applyRobotoFont(fontSize: 14, color: AppColor.darkGrey),
                  ),
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
