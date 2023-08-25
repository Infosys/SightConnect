import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class DoctorNearYouCard extends StatelessWidget {
  const DoctorNearYouCard({super.key});

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
      width: AppSize.width * 0.4,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            maxRadius: 40,
            minRadius: 35,
            backgroundImage: AssetImage(
              "assets/images/doctor.png",
            ),
          ),
          const SizedBox(height: AppSize.kmheight),
          Text(
            "Dr. Jagadish Rana",
            style: applyRobotoFont(
              fontSize: 12,
            ),
          ),
          Text(
            "Eye Surgeon",
            style: applyRobotoFont(
              fontSize: 10,
              color: AppColor.kGrey,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Book Appointment",
              style: applyRobotoFont(
                fontSize: 14,
                color: AppColor.kPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
