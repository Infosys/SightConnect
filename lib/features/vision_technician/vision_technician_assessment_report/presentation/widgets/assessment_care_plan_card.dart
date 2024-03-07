import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:flutter/material.dart';

class AssessementCarePlanCard extends StatelessWidget {
  const AssessementCarePlanCard({
    super.key,
    required this.carePlan,
    required this.title,
  });
  final List<String>? carePlan;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: applyFiraSansFont(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: AppSize.kmheight),
        AppCard(
          padding: AppSize.kmpadding,
          child: SizedBox(
            height: 40,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              // itemCount: carePlan?.length ?? 0,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Chip(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    label: const Text("Eye Surgery"),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
