import 'package:eye_care_for_all/features/technician/organ_harvest/presentation/widgets/hemodilution_widget.dart';
import 'package:eye_care_for_all/features/technician/organ_harvest/presentation/widgets/oh_side_stages.dart';
import 'package:eye_care_for_all/features/technician/organ_harvest/presentation/widgets/organ_harvest_widget.dart';
import 'package:eye_care_for_all/features/technician/organ_harvest/presentation/widgets/pre_cut_widget.dart';
import 'package:eye_care_for_all/features/technician/organ_harvest/presentation/widgets/serology_widget.dart';
import 'package:eye_care_for_all/features/technician/organ_harvest/providers/organ_harvest_provider.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
            Consumer(
              builder: (context, ref, child) {
                final widgets = [
                  const SizedBox(),
                  const HemodilutionWidget(),
                  const SerologyWidget(),
                  const OrganHarvestWidget(),
                  const SizedBox(),
                  const PreCutWidget(),
                  const SizedBox(),
                  const SizedBox(),
                ];
                final index = ref.watch(organHarvestProvider).currentStep;
                return Expanded(
                  child: widgets[index],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
