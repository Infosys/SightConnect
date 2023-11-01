import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/models/triage_assessment.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_questionnaire/provider/patient_triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var resProvider = StateProvider<List<bool>>((ref) => selectedStates);
List<bool> selectedStates = [];

class OptionGrid extends ConsumerStatefulWidget {
  const OptionGrid({
    required this.question,
    this.onTap,
    required this.pageIndex,
    super.key,
  });

  final int pageIndex;
  final List<Question> question;
  final Function(int)? onTap;

  @override
  _OptionGridState createState() => _OptionGridState();
}

class _OptionGridState extends ConsumerState<OptionGrid> {
  final TextEditingController remarksController = TextEditingController();
  bool isBottomSheetOpen = false;

  @override
  void initState() {
    super.initState();
    selectedStates.clear();
    for (int i = 0; i < widget.question.length; i++) {
      selectedStates.add(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    var selectedData = ref.watch(resProvider);
    void showBottomSheet() {
      showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (BuildContext context) {
          return SingleChildScrollView(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSize.klradius),
              child: Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: AppSize.height(context) * 0.7,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Other Symptoms",
                        style: applyRobotoFont(
                            fontSize: 16,
                            color: AppColor.black,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      color: const Color(0xFFFAFAFA),
                      child: TextField(
                        maxLines: 6,
                        controller: remarksController,
                        keyboardType: TextInputType.text,
                        onSubmitted: (value) {
                          ref.read(remarksProvider.notifier).state =
                              remarksController.text;
                          Navigator.pop(context);
                          setState(() {
                            isBottomSheetOpen = false;
                          });
                        },
                        decoration: InputDecoration(
                            hintText: 'Enter your symptoms here',
                            hintStyle: applyRobotoFont(
                                fontSize: 14,
                                color: AppColor.grey.withOpacity(0.4))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: widget.question.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (widget.pageIndex == 0) {
              if (selectedData[index]) {
                selectedData[index] = false;
              } else {
                for (int i = 0; i < selectedData.length; i++) {
                  selectedData[i] = (i == index);
                }
              }
            } else if (widget.pageIndex == 1 || widget.pageIndex == 2) {
              if (index == widget.question.length - 1) {
                if (!selectedData[index]) {
                  setState(() {
                    isBottomSheetOpen = true;
                  });
                  showBottomSheet();
                  selectedData[index] = true;
                } else {
                  selectedData[index] = false;
                  ref.read(remarksProvider.notifier).state = '';
                }
              } else {
                selectedData[index] = !selectedData[index];
              }
            } else {
              selectedData[index] = !selectedData[index];
            }

            widget.onTap?.call(index);
            setState(() {
              logger.d('\n\n$selectedData\n\n');
            });
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: selectedData[index]
                    ? AppColor.primary
                    : AppColor.grey.withOpacity(0.5),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                widget.question[index].statement ?? "",
                textAlign: TextAlign.left,
                softWrap: true,
                style: applyRobotoFont(
                  fontSize: 16,
                  color: AppColor.black,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
