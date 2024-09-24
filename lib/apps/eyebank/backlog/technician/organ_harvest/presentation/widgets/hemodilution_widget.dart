import 'package:eye_care_for_all/apps/eyebank/backlog/technician/organ_harvest/presentation/widgets/oh_main_header.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:flutter/material.dart';

class HemodilutionWidget extends StatelessWidget {
  const HemodilutionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OHMainHeader(
            title: "Hemodilution Test",
          ),
          SizedBox(height: 16),
          AppCard(
            title:
                "Did the donor receive an infusion or transfusion prior to providing the sample for collection?",
            titleBottomSize: 16,
            margin: null,
            child: Text('Yes'),
            //  AppSegmentButton(
            //   items: const ["Yes", "No"],
            //   onSelected: (value) {},
            // ),
          ),
        ],
      ),
    );
  }
}
