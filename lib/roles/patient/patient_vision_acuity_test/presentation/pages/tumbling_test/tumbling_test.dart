import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TumblingTest extends StatelessWidget {
  static const String routeName = '/tumbling-test';
  const TumblingTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Tumbling Test",
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.kspadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Visual acuity is a measure of the human eye’s ability to discern spatial details. It is the ability to distinguish letters or symbols on an eye chart at a certain distance",
              softWrap: true,
              style: applyRobotoFont(
                fontSize: 14,
              ),
            ),
            const SizedBox(height: AppSize.kmheight),
            Text(
              "Demonstration",
              style: applyRobotoFont(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: AppSize.kmheight),
            ListTile(
              leading: Container(
                constraints: const BoxConstraints(
                  maxWidth: 100,
                ),
                decoration: BoxDecoration(
                  color: AppColor.kGrey,
                  borderRadius: BorderRadius.circular(AppSize.ksradius),
                ),
                child: SvgPicture.asset(
                  "assets/images/play.svg",
                ),
              ),
              title: Text(
                "View Demonstration video to perform Tumbling E Test",
                style: applyRobotoFont(
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: AppSize.kmheight),
            ListTile(
              tileColor: AppColor.kWhite,
              title: Text(
                "View Steps to perform Tumbling E Test",
                style: applyRobotoFont(
                  fontSize: 14,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
