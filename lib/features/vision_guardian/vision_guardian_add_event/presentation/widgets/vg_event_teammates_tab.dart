import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_empty_result_card.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';

import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/constants/app_color.dart';
import '../providers/vg_add_member_provider.dart';
import 'vg_event_teammates_data_cards.dart';

class EventTeammatesTab extends HookConsumerWidget {
  const EventTeammatesTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    var model = ref.watch(visionGuadianAddMemberProvider);
    var addMember = useState<bool>(false);
    var data = model.teammateList;
    var loading = model.loading;

    var nameController1 = useTextEditingController();
    var mobileController1 = useTextEditingController();

    ref.listen(visionGuadianAddMemberProvider, (previous, next) {
      if (next.error) {
        Fluttertoast.showToast(
          msg: loc.vgErrorFetchingTeammatesDetails,
        );
      }
    });

    if (loading) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }
    if (data.isEmpty) {
      return const VisionGuardianEmptyResultCard(type: "teammates");
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${loc.vgTeammates}(${data.length})",
              style: applyRobotoFont(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColor.black,
              ),
            ),
            const SizedBox(
              height: AppSize.kl,
            ),
            Flexible(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                ...data.map((e) {
                  return TeammatesDataCards(
                    data: e[0],
                    type: "default",
                  );
                })
              ]),
            ),
            const SizedBox(
              height: AppSize.km,
            ),
            Visibility(
              visible: addMember.value,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.ks),
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
                          hintText: loc.vgName,
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
                                            int.parse(mobileController1.text))
                                        .then((value) {
                                      Fluttertoast.showToast(
                                        msg: loc.vgTeamMateAddedSuccessfully,
                                      );
                                    }).catchError((error) {
                                      Fluttertoast.showToast(
                                          msg: loc.vgSomethingWentWrong);
                                    });

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
                      height: AppSize.kl,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: TextField(
                        onChanged: (value) {
                          mobileController1.text = value;
                        },
                        controller: mobileController1,
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
            ),
            const SizedBox(
              height: AppSize.ks,
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
                    loc.vgAddTeammate,
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
      ),
    );
  }
}
