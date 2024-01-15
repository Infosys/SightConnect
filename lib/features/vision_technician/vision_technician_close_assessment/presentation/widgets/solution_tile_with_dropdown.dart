import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
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
    // var refRead = ref.read(vtCloseAssessmentHelperProvider);
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

                  // refRead.setSolution(title.toLowerCase());
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
        ],
      ),
    );
  }
}
