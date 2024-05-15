import 'package:eye_care_for_all/features/technician/organ_harvest/presentation/widgets/oh_side_stages.dart';
import 'package:eye_care_for_all/features/technician/organ_harvest/presentation/widgets/order_Delivery.dart';
import 'package:eye_care_for_all/features/technician/organ_harvest/presentation/widgets/organ_screening_widget.dart';
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
                  const OrderDelivery(),
                  const OrganScreenWidget(),

                  const SerologyWidget(
                    
                  ),
                  const SerologyWidget(),
                  const SerologyWidget(),
                  const SerologyWidget(),
                  const SerologyWidget(),
                  const SerologyWidget(),
                  
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
