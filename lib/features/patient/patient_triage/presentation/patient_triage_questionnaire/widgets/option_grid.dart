import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/models/triage_assessment.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var resProvider = Provider<List<bool>>((ref) => selectedStates);
//  List<bool> selectedStates = List<bool>.generate(21, (e) => false);

   List<bool> selectedStates = [];
class OptionGrid extends ConsumerStatefulWidget {
  const OptionGrid({
    required this.question,
    this.onTap,
    required this.pageIndex,
    super.key,
  });

  final int pageIndex; // Make sure pageIndex is of type int
  final List<Question> question;
  final Function(int)? onTap;

  @override
 _OptionGridState createState() => _OptionGridState();
}

class _OptionGridState extends ConsumerState<OptionGrid> {
  

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
            // Implement the logic for item selection based on pageIndex
            if (widget.pageIndex == 0) {
              // When pageIndex is 0, only one item can be selected
              if (selectedStates[index]) {
                // If the same item is tapped again, unselect it
                selectedStates[index] = false;
              } else {
                // Select a different item and unselect others
                for (int i = 0; i < selectedStates.length; i++) {
                  selectedStates[i] = (i == index);
                }
              }
            } else {
              // When pageIndex is greater than 0, items can be selected independently
              selectedStates[index] = !selectedStates[index];
            }
            widget.onTap?.call(index);
            setState(() {
              print('\n\n$selectedStates\n\n');
            });
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: selectedStates[index]
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
