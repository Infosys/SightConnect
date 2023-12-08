import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AssessmentResultCards extends StatelessWidget {
  const AssessmentResultCards({
    required this.triageResult,
    super.key,
  });
  final List<Map<String, dynamic>> triageResult;
  @override
  Widget build(BuildContext context) {
    if (triageResult.isEmpty) {
      return const SizedBox();
    }
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 3,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        final resultData = triageResult[index];
        return Container(
          padding: EdgeInsets.only(
            left: AppSize.width(context) * 0.03,
            top: AppSize.height(context) * 0.01,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: resultData['backColor'],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: resultData['checkColor'] ?? "",
                ),
                child: Center(
                  child: Icon(
                    resultData['icon'] ?? "",
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                index == 0
                    ? 'Assessment\nQuestions'
                    : index == 1
                        ? 'Acuity\nTest'
                        : 'Eye\nScan',
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                resultData['state'] ?? "",
                style: applyRobotoFont(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
