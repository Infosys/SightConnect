import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/data/enums/vt_close_assessment_enums.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';

class SolutionTile extends HookConsumerWidget {
  const SolutionTile({
    super.key,
    required this.goalOutCome,
  });

  final GoalOutCome goalOutCome;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var switchState = useState<bool>(false);

    var refRead = ref.read(vtCloseAssessmentHelperProvider);
    return Container(
      padding: const EdgeInsets.all(AppSize.km),
      margin: const EdgeInsets.all(AppSize.ks),
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applycustomShadow(),
        borderRadius: BorderRadius.circular(AppSize.km),
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

                  refRead.setSolution(goalOutCome);
                  // model.addSolutions(title);
                },
              ),
              const SizedBox(width: AppSize.ks),
              Text(
                _enumToString(goalOutCome),
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

  String _enumToString(GoalOutCome goalOutCome) {
    List<String> words = goalOutCome.toString().split('.').last.split('_');
    String title = "";

    for (int i = 0; i < words.length; i++) {
      title += words[i].sentenceCase();
      if (i != words.length - 1) {
        title += " ";
      }
    }

    return title;
  }
}
