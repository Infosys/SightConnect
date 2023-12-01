import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/data/model/eye_care_details_question_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/input.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EyeCareDetails extends HookConsumerWidget {
  EyeCareDetails({Key? key}) : super(key: key);

  var whereController1 = TextEditingController();
  var whereController2 = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedAnswer = useState([
      [0, 0],
      [0, 0],
      [0, 0]
    ]);
    List<EyeCareDetailsQuestionModel> eyeCareDetailsQuestion = [
      EyeCareDetailsQuestionModel(
        questionId: 1,
        question: "Did you have eye examination done previously",
        answer: "",
        answerDescription: "",
      ),
      EyeCareDetailsQuestionModel(
          questionId: 2,
          question: "Did you have cataract surgery",
          answer: "",
          answerDescription: ""),
      EyeCareDetailsQuestionModel(
          questionId: 3,
          question: "Are you using eye glasses",
          answer: "",
          answerDescription: ""),
    ];
    return Container(
        width: double.infinity,
        height: AppSize.klheight * 22,
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(AppSize.kmradius),
          boxShadow: const [
            BoxShadow(
              color: AppColor.lightGrey, //New
              blurRadius: AppSize.ksradius / 2,
              spreadRadius: AppSize.ksradius / 8,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppSize.klpadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Eye Care Details (Optional)",
                style: applyFiraSansFont(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: AppSize.klheight),
              Wrap(
                spacing: AppSize.kswidth,
                children: eyeCareDetailsQuestion.map((questionModel) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${questionModel.questionId}.${questionModel.question}",
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: AppSize.ksheight,
                      ),
                      Wrap(
                        direction: Axis.horizontal,
                        spacing: AppSize.kmwidth,
                        children: List.generate(
                          2,
                          (index) => ChoiceChip(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            side: const BorderSide(
                                color: AppColor.grey, width: 1),
                            backgroundColor: AppColor.white,
                            padding: const EdgeInsets.all(8),
                            label: index == 0
                                ? const Text('No')
                                : const Text('Yes'),
                            selectedColor: selectedAnswer
                                            .value[questionModel.questionId - 1]
                                        [index] ==
                                    1
                                ? AppColor.lightBlue
                                : AppColor.white,
                            onSelected: (bool selected) {
                              print(selectedAnswer.value);
                              var newstate = selectedAnswer.value
                                  .map((e) => e.toList())
                                  .toList();
                              if (newstate[questionModel.questionId - 1]
                                      [index] ==
                                  1) {
                                newstate[questionModel.questionId - 1][index] =
                                    0;
                                print(index);
                                print(newstate);
                              } else {
                                if (index == 0) {
                                  newstate[questionModel.questionId - 1][1] = 0;
                                } else {
                                  newstate[questionModel.questionId - 1][0] = 0;
                                }

                                newstate[questionModel.questionId - 1][index] =
                                    1;
                              }

                              selectedAnswer.value = newstate;
                              print(selectedAnswer.value);
                            },
                            selected: true,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: AppSize.kmheight,
                      ),
                      if (questionModel.questionId != 3)
                        Container(
                          padding: const EdgeInsets.all(AppSize.kmpadding),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(AppSize.ksradius),
                              color: Color(0xffFFFFFF)),
                          width: AppSize.width(context) * 0.4,
                          height: AppSize.height(context) * 0.15,
                          child: Input(
                            title: "Where?",
                            keyboardType: TextInputType.name,
                            controller: questionModel.questionId == 1
                                ? whereController1
                                : whereController2,
                          ),
                        ),
                      const SizedBox(
                        height: AppSize.kmheight,
                      )
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ));
  }
}
