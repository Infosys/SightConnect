import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SolutionTileWithDropdown extends HookConsumerWidget {
  const SolutionTileWithDropdown({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var switchState = useState<bool>(false);
    var dropDownState = useState<bool>(false);
    var refRead = ref.read(vtCloseAssessmentHelperProvider);
    return Container(
      padding: const EdgeInsets.all(AppSize.kmpadding),
      margin: const EdgeInsets.all(AppSize.kspadding),
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyLightShadow(),
        borderRadius: BorderRadius.circular(AppSize.kmradius),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CupertinoSwitch(
                value: switchState.value,
                activeColor: AppColor.primary,
                onChanged: (bool value) {
                  switchState.value = value;
                  dropDownState.value = value;

                  refRead.setSolution(title.toLowerCase());
                  // model.addSolutions(title);
                },
              ),
              const SizedBox(width: AppSize.kswidth),
              Text(
                title,
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColor.grey,
                ),
              ),
            ],
          ),
          // if (dropDownState.value)
          //   Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       for (int i = 0; i < count.value; i++)
          //         Container(
          //           margin: const EdgeInsets.only(
          //             left: AppSize.klwidth * 5,
          //             right: AppSize.klwidth,
          //           ),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Wrap(
          //                 spacing: AppSize.klwidth * 3,
          //                 runSpacing: AppSize.kmheight,
          //                 children: [
          //                   Row(
          //                     mainAxisSize: MainAxisSize.min,
          //                     children: [
          //                       Text(
          //                         "$title Name",
          //                         maxLines: 1,
          //                         overflow: TextOverflow.ellipsis,
          //                         style: applyRobotoFont(
          //                           fontSize: 14,
          //                           fontWeight: FontWeight.w500,
          //                           color: AppColor.grey,
          //                         ),
          //                       ),
          //                       const SizedBox(width: AppSize.klwidth),
          //                       Text(
          //                         "Soothe XP",
          //                         maxLines: 1,
          //                         overflow: TextOverflow.ellipsis,
          //                         style: applyRobotoFont(
          //                           fontSize: 14,
          //                           fontWeight: FontWeight.w500,
          //                         ),
          //                       ),
          //                     ],
          //                   ),

          //                   Row(
          //                     mainAxisSize: MainAxisSize.min,
          //                     children: [
          //                       Text(
          //                         "Dosage",
          //                         maxLines: 1,
          //                         overflow: TextOverflow.ellipsis,
          //                         style: applyRobotoFont(
          //                           fontSize: 14,
          //                           fontWeight: FontWeight.w500,
          //                           color: AppColor.grey,
          //                         ),
          //                       ),
          //                       const SizedBox(width: AppSize.klwidth),
          //                       Text(
          //                         "3 Times a Day",
          //                         maxLines: 1,
          //                         overflow: TextOverflow.ellipsis,
          //                         style: applyRobotoFont(
          //                           fontSize: 14,
          //                           fontWeight: FontWeight.w500,
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 ],
          //               ),
          //               const SizedBox(height: AppSize.klheight),
          //               const Divider(color: AppColor.grey),
          //             ],
          //           ),
          //         ),
          //       Container(
          //         margin: const EdgeInsets.only(
          //           left: AppSize.klwidth * 5,
          //         ),
          //         child: TextButton(
          //           onPressed: () {
          //             count.value++;
          //           },
          //           child: Row(
          //             mainAxisSize: MainAxisSize.min,
          //             children: [
          //               const Icon(
          //                 Icons.add_circle_outline,
          //                 color: AppColor.primary,
          //                 size: AppSize.klheight,
          //               ),
          //               const SizedBox(width: AppSize.kswidth),
          //               Text(
          //                 "Add",
          //                 style: applyRobotoFont(
          //                   fontSize: 13,
          //                   fontWeight: FontWeight.w500,
          //                   color: AppColor.primary,
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
        ],
      ),
    );
  }
}
