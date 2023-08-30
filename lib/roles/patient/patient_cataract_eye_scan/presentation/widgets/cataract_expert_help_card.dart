import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';


class ExperthelpCard extends StatelessWidget {
  const ExperthelpCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.kspadding + 2),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          clipBehavior: Clip.hardEdge,
          elevation: 2,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: AppSize.kspadding + 2,
                    horizontal: AppSize.kmpadding),
                child: Text(
                  "Get an Expert's Help",
                  style: applyFiraSansFont(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: AppSize.kspadding, horizontal: AppSize.kmpadding),
                child: Text(
                  "Consult with the best Eye Specialist in your area for the\nbest diagnosis",
                  style: applyFiraSansFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.kDarkCharcoal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: AppSize.kspadding, horizontal: AppSize.kmpadding),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        backgroundColor: AppColor.kPrimary,
                        fixedSize: const Size(150, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Consult a Doctor",
                        style: applyRobotoFont(
                            color: AppColor.kWhite,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Spacer(),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.trending_up,
                        color: AppColor.kGreen,
                      ),
                      label: Text(
                        "1k+ got helped so far",
                        style: applyRobotoFont(
                            color: AppColor.kGreen,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
