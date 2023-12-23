import 'package:cached_network_image/cached_network_image.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_registeration_page.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/domain/models/profile_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PatientFamilyDetails extends StatelessWidget {
  const PatientFamilyDetails({
    super.key,
    required this.relations,
  });
  final List<RelatedPartyModel> relations;

  @override
  Widget build(BuildContext context) {
    if (relations.isEmpty) {
      return const SizedBox();
    }

    return ListTile(
      visualDensity: VisualDensity.compact,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Members",
            style: applyFiraSansFont(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: AppSize.ksheight,
          ),
          ...relations
              .map(
                (data) => ListTile(
                  visualDensity: const VisualDensity(vertical: -4),
                  contentPadding: const EdgeInsets.all(0),
                  title: Row(
                    children: [
                      data.profilePicture != null
                          ? CachedNetworkImage(
                              imageUrl: data.profilePicture!,
                              imageBuilder: (context, imageProvider) =>
                                  CircleAvatar(
                                backgroundImage: imageProvider,
                              ),
                              errorWidget: (context, url, error) =>
                                  const CircleAvatar(
                                backgroundColor: AppColor.lightGrey,
                              ),
                            )
                          : const CircleAvatar(),
                      const SizedBox(
                        width: AppSize.ksheight,
                      ),
                      Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.name ?? "",
                              style: applyRobotoFont(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              data.parentPatientId != null
                                  ? data.relation.toString().split(".").last
                                  : "Self, ${data.age} years",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: applyRobotoFont(
                                fontSize: 12,
                                color: AppColor.grey,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  trailing: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Profile completion 100%",
                        softWrap: true,
                        style: applyRobotoFont(
                          fontSize: 12,
                          color: AppColor.green,
                        ),
                      ),
                      const Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              )
              .toList(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                customBorder: const CircleBorder(),
                onTap: () {
                  try {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const PatientRegistrationMiniappPage(),
                      ),
                    );
                  } catch (e) {
                    logger.d({"error": e});
                    Fluttertoast.showToast(
                      msg: "Service not available",
                    );
                  }
                },
                child: Container(
                  width: 42.0,
                  height: 42.0,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                      color: AppColor.lightBlue,
                      width: 1.0,
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: AppColor.blue,
                  ),
                ),
              ),
              const SizedBox(width: AppSize.ksheight + 10),
              Text(
                "Add Members",
                style: applyFiraSansFont(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: AppColor.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
