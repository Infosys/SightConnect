import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppointmentBookingDoctorCard extends StatelessWidget {
  final String? doctorName;
  final String? doctorSpeciality;
  final String? hospialName;
  final String? doctorImage;
  const AppointmentBookingDoctorCard({
    super.key,
    this.doctorName,
    this.doctorSpeciality,
    this.doctorImage,
    this.hospialName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.klradius),
              color: AppColor.kPrimary.withOpacity(0.1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppSize.kmpadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: AppSize.klradius * 1.4,
                    backgroundImage: AssetImage(AppImages.doctor),
                    backgroundColor: AppColor.kBlue,
                  ),
                  const SizedBox(
                    width: AppSize.kmpadding,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          doctorName ?? "",
                          style: applyFiraSansFont(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          doctorSpeciality ?? "",
                          style: applyRobotoFont(
                            fontSize: 14,
                            color: AppColor.kGrey,
                          ),
                        ),
                        Text(
                          hospialName ?? "",
                          style: applyRobotoFont(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.call,
                        color: AppColor.kGrey,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        Icons.message,
                        color: AppColor.kGrey,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
