import 'package:eye_care_for_all/core/providers/global_vg_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_member_provider.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';

import 'package:eye_care_for_all/shared/widgets/toaster.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';
import '../../../../../shared/theme/text_theme.dart';

class TeammatesDataCards extends HookConsumerWidget {
  const TeammatesDataCards({super.key, required this.data, required this.type});

  // final int index;
  final dynamic data;
  final String type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var nameController = useTextEditingController();
    var mobileController = useTextEditingController();
    var isEdit = useState<bool>(true);

    return Padding(
      padding: const EdgeInsets.all(AppSize.kspadding / 4),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.ksradius),
          color: AppColor.white,
          border: Border.all(
            color: AppColor.grey.withOpacity(0.5),
          ),
        ),
        padding: const EdgeInsets.all(AppSize.kspadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: data["profilePhoto"] == ""
                      ? AppNameAvatar(
                          name: data["personalInformation"]["lastName"] +
                                  " " +
                                  data["personalInformation"]["firstName"] ??
                              "",
                          color: AppColor.blue,
                          fontSize: 16,
                        )
                      : AppNetworkImage(imageUrl: data["profilePhoto"]),
                ),
                const SizedBox(
                  width: 10,
                ),
                Transform.translate(
                  offset: const Offset(0, -5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: AppSize.width(context) * 0.7,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                nameController.value.text == ''
                                    ? data["personalInformation"]["firstName"] +
                                        " " +
                                        data["personalInformation"]["lastName"]
                                    : nameController.value.text,
                                style: applyFiraSansFont(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.black,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Transform.translate(
                              offset: const Offset(0, 10),
                              child: InkWell(
                                onTap: () {
                                  ref
                                      .read(visionGuadianAddMemberProvider)
                                      .deleteMember(data["id"].toString());

                                  if (data["id"] ==
                                      ref.read(globalVGProvider).userId) {
                                    ref
                                        .read(addEventDetailsProvider)
                                        .filterListEvents(-1, "ALL");
                                    if (type == "Search") {
                                      Navigator.pop(context);
                                    }
                                    Navigator.pop(context);
                                  } else {
                                    if (type == "Search") {
                                      ref
                                          .read(visionGuadianAddMemberProvider)
                                          .setAdd();
                                      Navigator.pop(context);
                                    }
                                  }
                                  showToastMessage(
                                      "TeamMate Deleted Succesfully",
                                      context,
                                      0);
                                },
                                child: const Icon(
                                  Icons.delete_outline,
                                  color: AppColor.red,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: AppSize.ksheight,
                      ),
                      Text(
                        mobileController.value.text == ''
                            ? data["officialMobile"]
                            : mobileController.value.text,
                        style: applyRobotoFont(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColor.black,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Visibility(
              visible: !isEdit.value,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextField(
                      controller: nameController,
                      onChanged: (value) {
                        nameController.text = value;
                      },
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.klheight,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextField(
                      onChanged: (value) {
                        mobileController.text = value;
                      },
                      controller: mobileController,
                      decoration: InputDecoration(
                        hintText: "Phone Number",
                        hintStyle: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.klheight,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
