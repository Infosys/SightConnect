import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_member_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_vg_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_volunteer_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../shared/constants/app_color.dart';
import '../../../../../../../shared/constants/app_size.dart';
import '../../../../../../../shared/theme/text_theme.dart';

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
    final loc = context.loc!;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.ks),
        color: AppColor.white,
        border: Border.all(
          color: AppColor.lightGrey,
        ),
      ),
      padding: const EdgeInsets.all(AppSize.ks),
      margin: const EdgeInsets.symmetric(vertical: AppSize.ks / 2),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: data["profilePhoto"] == null ||
                          data["profilePhoto"] == ""
                      ? AppNameAvatar(
                          name:
                              data["firstName"] + " " + data["lastName"] ?? "",
                          color: AppColor.blue,
                          fontSize: 16,
                        )
                      : AppNetworkImage(imageUrl: data["profilePhoto"]),
                ),
                const SizedBox(width: AppSize.ks),
                Transform.translate(
                  offset: const Offset(0, -5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: Responsive.isMobile(context)
                            ? AppSize.width(context) * 0.7
                            : AppSize.width(context) * 0.85,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                nameController.value.text == ''
                                    ? data["firstName"] + " " + data["lastName"]
                                    : nameController.value.text,
                                style: applyFiraSansFont(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.black,
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: const Offset(0, 10),
                              child: InkWell(
                                onTap: () async {
                                  var userId = PersistentAuthStateService
                                              .authState.activeRole ==
                                          "ROLE_VOLUNTEER"
                                      ? ref.read(globalVolunteerProvider).userId
                                      : ref.read(globalVGProvider).userId;
                                  var navigator = Navigator.of(context);
                                  var model = ref.read(addEventDetailsProvider);
                                  await ref
                                      .read(visionGuadianAddMemberProvider)
                                      .deleteMember(data["id"].toString())
                                      .then((value) {
                                    if (data["id"] == userId) {
                                      model.filterListEvents(-1, "ALL");
                                      if (type == "Search") {
                                        navigator.pop();
                                      }
                                      navigator.pop();
                                    } else {
                                      if (type == "Search") {
                                        navigator.pop();
                                      }
                                    }
                                    Fluttertoast.showToast(
                                      msg: loc.vgTeamMateDeletedSuccessfully,
                                    );
                                  }).onError((error, stackTrace) {
                                    Fluttertoast.showToast(
                                      msg: loc.vgSomethingWentWrong,
                                    );
                                  });
                                },
                                child: const Icon(
                                  Icons.delete_outline,
                                  color: AppColor.red,
                                  size: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        mobileController.value.text == ''
                            ? data["officialMobile"]
                            : mobileController.value.text,
                        style: applyRobotoFont(
                          fontSize: 12,
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
                        hintText: loc.vgName,
                        hintStyle: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.kl,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextField(
                      onChanged: (value) {
                        mobileController.text = value;
                      },
                      controller: mobileController,
                      decoration: InputDecoration(
                        hintText: loc.vgPhoneNumber,
                        hintStyle: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.kl,
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
