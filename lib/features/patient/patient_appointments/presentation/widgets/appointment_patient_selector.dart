import 'package:flutter/material.dart';
import 'package:flutter_native_splash/cli_commands.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';
import '../../../../../core/models/patient_response_model.dart';
import '../../../../../shared/theme/text_theme.dart';
import '../../../../../shared/widgets/app_name_avatar.dart';
import '../../../../../shared/widgets/app_network_image.dart';

class AppointmentPatientSelector extends StatelessWidget {
  const AppointmentPatientSelector(
      {super.key, required this.patient, required this.relations});

  final PatientResponseModel patient;
  final List<RelatedPartyModel> relations;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: AppSize.height(context) * 0.06,
            padding: const EdgeInsets.symmetric(
                horizontal: AppSize.kspadding, vertical: AppSize.kspadding - 2),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.6),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
                const SizedBox(width: AppSize.kswidth - 2),
                Text(
                  "All",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: applyRobotoFont(
                    fontSize: 14,
                    color: AppColor.black,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: AppSize.kspadding),
          Container(
            height: AppSize.height(context) * 0.06,
            padding: const EdgeInsets.symmetric(
                horizontal: AppSize.kspadding, vertical: AppSize.kspadding - 2),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.6),
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
                  _formateFirstName(patient.profile!.patient!.name!),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: applyRobotoFont(
                    fontSize: 14,
                    color: AppColor.grey,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: AppSize.kspadding),
          SizedBox(
            height: AppSize.height(context) * 0.06,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: relations.length,
              itemBuilder: (context, index) {
                return Container(
                  height: AppSize.height(context) * 0.06,
                  margin: const EdgeInsets.only(right: AppSize.kspadding),
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSize.kspadding,
                    vertical: AppSize.kspadding - 2,
                  ),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 12,
                        ),
                      ),
                      const SizedBox(width: AppSize.kspadding - 2),
                      relations[index].profilePicture != null
                          ? Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: AppColor.blue,
                                  width: 3,
                                ),
                              ),
                              child: AppNetworkImage(
                                imageUrl: relations[index].profilePicture!,
                              ),
                            )
                          : AppNameAvatar(
                              name: relations[index].name!,
                              radius: 16,
                              fontSize: 12,
                            ),
                      const SizedBox(width: AppSize.kswidth - 2),
                      Text(
                        _formateFirstName(relations[index].name!),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: applyRobotoFont(
                          fontSize: 14,
                          color: AppColor.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  _formateFirstName(String name) {
    if (name.isEmpty) {
      return "";
    } else {
      return name.split(" ")[0].capitalize();
    }
  }
}
