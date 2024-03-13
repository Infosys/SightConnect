import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class ExperthelpCard extends StatelessWidget {
  const ExperthelpCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.ks + 2),
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
                    vertical: AppSize.ks + 2, horizontal: AppSize.km),
                child: Text(
                  "Get an Expert's Help",
                  style: applyFiraSansFont(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: AppSize.ks, horizontal: AppSize.km),
                child: Text(
                  "Consult with the best Eye Specialist in your area for the\nbest diagnosis",
                  style: applyFiraSansFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.darkCharcoal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: AppSize.ks, horizontal: AppSize.km),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(0),
                          backgroundColor: AppColor.primary,
                          fixedSize: const Size(150, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Consult a Doctor",
                          style: applyRobotoFont(
                              color: AppColor.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.trending_up,
                          color: AppColor.green,
                        ),
                        label: Text(
                          "1k+ got helped so far",
                          softWrap: true,
                          style: applyRobotoFont(
                              color: AppColor.green,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
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
