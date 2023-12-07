import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../domain/models/triage_assessment_model.dart';
import '../../triage_member_selection/widget/triage_steps_drawer.dart';
import '../widgets/option_grid.dart';

class TriageQuestionnairePage extends HookConsumerWidget {
  const TriageQuestionnairePage({
    required this.questionnaireSections,
    super.key,
  });

  final List<QuestionnaireSectionsResponseModel> questionnaireSections;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController();
    final scaffoldKey = useState(GlobalKey<ScaffoldState>());
    final model = ref.watch(triageQuestionnaireProvider);
    var pageIndex = useState<int>(0);
    final isLastPage =
        model.questionnaireSections.length - 1 == pageIndex.value;
    final isButtonEnabled = model.selectedOptions.isNotEmpty;
    ref.watch(triageQuestionnaireProvider).getQuestionnaire(
          questionnaireSections,
        );
        
    return PopScope(
      canPop: false,
      onPopInvoked: (value) {
        if (value) {
          return;
        }
        showDialog(
          context: context,
          builder: (context) => TriageExitAlertBox(
            content: context.loc!.questionnaireExitDialog,
          ),
        );
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
                context.loc!.questionnaireTitle,
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
            return Padding(
              padding: const EdgeInsets.all(AppSize.kmpadding),
              child: PageView.builder(
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: model.questionnaireSections.length,
                itemBuilder: (context, index) {
                  var questionnaire = model.questionnaireSections[index]
                      .questionnaireResponseDTOList?.first;

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
                          questions: questionnaire?.questionResponseDTO ?? [],
                        ),
                        const SizedBox(height: AppSize.klheight),
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
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(left: 16, bottom: 16, right: 16),
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
                          .read(triageQuestionnaireProvider)
                          .saveQuestionaireResponseToDB();
                      ref.read(triageStepperProvider).goToNextStep();
                      pageIndex.value = 0;
                    } else {
                      pageIndex.value = pageIndex.value + 1;
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                    }
                  },
            child: Text(
              isLastPage ? context.loc!.proceedButton : context.loc!.nextButton,
              style: applyRobotoFont(
                fontSize: 14,
                color: AppColor.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
