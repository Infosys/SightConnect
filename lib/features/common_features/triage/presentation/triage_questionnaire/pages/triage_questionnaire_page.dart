import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../triage_member_selection/widget/triage_steps_drawer.dart';
import '../widgets/option_grid.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TriageQuestionnairePage extends HookConsumerWidget {
  const TriageQuestionnairePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var pageController = usePageController();
    var scaffoldKey = useState(GlobalKey<ScaffoldState>());
    var triageModel = ref.watch(triageProvider);
    ref
        .watch(triageQuestionnaireProvider)
        .getQuestionnaire(triageModel.questionnaireSections);

    return WillPopScope(
      onWillPop: () async {
        var result = await showDialog(
          context: context,
          builder: (context) => TriageExitAlertBox(
            content: context.loc!.questionnaireExitDialog,
          ),
        );
        return result ?? false;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        key: scaffoldKey.value,
        drawer: const TriageStepsDrawer(),
        appBar: CustomAppbar(
          leadingWidth: 60,
          titleSpacing: 0.0,
          centerTitle: false,
          leadingIcon: InkWell(
            customBorder: const CircleBorder(),
            onTap: () {
              scaffoldKey.value.currentState!.openDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Image.asset(
                AppIcon.hamburgerIcon,
              ),
            ),
          ),
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: AppSize.kmwidth),
              Text(
                context.loc!.stepNumber("1", "3"),
                style: applyRobotoFont(
                  color: AppColor.primary,
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: AppSize.kswidth),
              Text(
                AppLocalizations.of(context)!.questionnaireTitle,
                style: applyFiraSansFont(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        body: Consumer(
          builder: (context, ref, _) {
            var model = ref.watch(triageQuestionnaireProvider);

            return Padding(
              padding: const EdgeInsets.all(AppSize.kmpadding),
              child: PageView.builder(
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: model.questionnaireSections.length,
                itemBuilder: (context, index) {
                  var questionnaire =
                      model.questionnaireSections[index].questionnaire?.first;
                  var isLastPage =
                      model.questionnaireSections.length - 1 == index;
                  var isButtonEnabled = model.selectedOptions.isNotEmpty &&
                      model.selectedOptions.containsValue(true);

                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          questionnaire?.description ?? "",
                          style: applyFiraSansFont(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 20),
                        OptionGrid(
                          pageNumber: index,
                          questions: questionnaire?.questions ?? [],
                        ),
                        const SizedBox(height: AppSize.klheight),
                        SizedBox(
                          width: isLastPage
                              ? AppSize.width(context)
                              : AppSize.width(context) * 0.45,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),
                            onPressed: !isButtonEnabled
                                ? null
                                : () {
                                    model.saveQuestionaireResponse();
                                    if (isLastPage) {
                                      ref
                                          .read(triageStepperProvider)
                                          .goToNextStep();
                                    } else {
                                      pageController.nextPage(
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.easeIn,
                                      );
                                    }
                                  },
                            child: Text(
                              isLastPage
                                  ? AppLocalizations.of(context)!.proceedButton
                                  : AppLocalizations.of(context)!.nextButton,
                              style: applyRobotoFont(
                                fontSize: 14,
                                color: AppColor.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: AppSize.klheight,
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
