import 'package:eye_care_for_all/features/technician/organ_harvest/presentation/widgets/oh_main_header.dart';
import 'package:eye_care_for_all/features/technician/organ_harvest/presentation/widgets/oh_side_stages.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_segment_button.dart';
import 'package:flutter/material.dart';

class OrganHarvestPage extends StatelessWidget {
  const OrganHarvestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!Responsive.isMobile(context)) const OHSideStages(width: 300),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const OHMainHeader(),
                    const SizedBox(height: 16),
                    AppCard(
                      title:
                          "Did the donor receive an infusion or transfusion prior to providing the sample for collection?",
                      titleBottomSize: 16,
                      margin: null,
                      child: AppSegmentButton(
                        items: const ["Yes", "No"],
                        onSelected: (value) {},
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Submit"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
