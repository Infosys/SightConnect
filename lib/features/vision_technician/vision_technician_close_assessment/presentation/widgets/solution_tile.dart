import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_search_provider.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SolutionTile extends HookConsumerWidget {
  const SolutionTile({
    super.key,
    required this.title,
    required this.hasDropDown,
  });

  final String title;
  final bool hasDropDown;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var switchState = useState<bool>(false);
    var dropDownState = useState<bool>(false);

    var model = ref.watch(visionTechnicianSearchProvider);
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
                  model.addSolutions(title);
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
          if (hasDropDown && dropDownState.value)
            Container(
              margin: const EdgeInsets.only(
                left: AppSize.klwidth * 5,
                right: AppSize.klwidth,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "$title Name",
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.grey,
                        ),
                      ),
                      const SizedBox(width: AppSize.klwidth),
                      Text(
                        "Soothe XP",
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "Dosage",
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.grey,
                        ),
                      ),
                      const SizedBox(width: AppSize.klwidth),
                      Text(
                        "3 Times a Day",
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSize.klheight),
                  const Divider(color: AppColor.grey),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.add_circle_outline,
                          color: AppColor.primary,
                          size: AppSize.klheight,
                        ),
                        const SizedBox(width: AppSize.kswidth),
                        Text(
                          "Add",
                          style: applyRobotoFont(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: AppColor.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}
