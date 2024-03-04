import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/models/patient_response_model.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';

class CheckContainer extends StatelessWidget {
  const CheckContainer({
    super.key,
    required this.patient,
    required this.isSelected,
  });
  final PatientResponseModel patient;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.height(context) * 0.06,
      padding: const EdgeInsets.symmetric(
          horizontal: AppSize.kspadding, vertical: AppSize.kspadding - 2),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isSelected ? AppColor.blue : AppColor.white,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: isSelected ? AppColor.blue : AppColor.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.check,
              color: Colors.white,
              size: 12,
            ),
          ),
          const SizedBox(width: AppSize.kspadding - 2),
          patient.profile?.patient?.profilePhoto != null
              ? Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColor.blue,
                      width: 3,
                    ),
                  ),
                  child: AppNetworkImage(
                    imageUrl: patient.profile!.patient!.profilePhoto!,
                  ),
                )
              : AppNameAvatar(
                  name: patient.profile!.patient!.name!,
                  radius: 16,
                  fontSize: 12,
                ),
          const SizedBox(width: AppSize.kswidth - 2),
          Text(
            patient.profile!.patient!.firstName!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(
              fontSize: 14,
              color: isSelected ? AppColor.black : AppColor.white,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
