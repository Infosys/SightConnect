import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_empty_result_card.dart';

import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/toaster.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/constants/app_color.dart';
import '../providers/vg_add_member_provider.dart';
import 'vg_event_teammates_data_cards.dart';

class EventTeammatesTab extends HookConsumerWidget {
  const EventTeammatesTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var addMember = useState<bool>(false);

    var nameController1 = useTextEditingController();
    var mobileController1 = useTextEditingController();
    return ref.watch(teamListProvider).when(data: (data) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Teammates(${data.length})",
              style: applyRobotoFont(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColor.black,
              ),
            ),
            const SizedBox(
              height: AppSize.klheight,
            ),
            Flexible(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                ...data.map((e) {
                  return TeammatesDataCards(
                    data: e,
                    type: "default",
                  );
                })
              ]),
            ),
            const SizedBox(
              height: AppSize.kmheight,
            ),
            Visibility(
              visible: addMember.value,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.ksradius),
                  color: AppColor.white,
                  border: Border.all(
                    color: AppColor.grey.withOpacity(0.5),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: TextField(
                        onChanged: (value) {
                          nameController1.text = value;
                        },
                        controller: nameController1,
                        decoration: InputDecoration(
                          hintText: "Name",
                          hintStyle: applyRobotoFont(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.grey,
                          ),
                          suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (mobileController1.text.isEmpty) {
                                      return;
                                    }
                                    ref
                                        .read(visionGuadianAddMemberProvider)
                                        .addMemberData(
                                            int.parse(mobileController1.text));
                                    showToastMessage(
                                        "TeamMate Added Succesfully",
                                        context,
                                        0);
                       

                                    addMember.value = false;
                                  },
                                  child: const Icon(
                                    Icons.check_circle_outline,
                                    color: AppColor.grey,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    nameController1.text = "";

                                    mobileController1.text = "";
                                    addMember.value = false;
                                  },
                                  child: const Icon(
                                    Icons.delete,
                                    color: AppColor.red,
                                    size: 30,
                                  ),
                                ),
                              ]),
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
                          mobileController1.text = value;
                        },
                        controller: mobileController1,
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
            ),
            const SizedBox(
              height: AppSize.ksheight,
            ),
            InkWell(
              onTap: () {
                addMember.value = !addMember.value;
                mobileController1.text = "";
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.add_circle_outline,
                    color: AppColor.primary,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Add Teammate",
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.primary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }, loading: () {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }, error: (error, stack) {
      return const Center(
          child: VisionGuardianEmptyResultCard(type: "teamMates"));
    });
  }
}
