import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class TissueReturnDashboard extends StatelessWidget {
  const TissueReturnDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
    margin: null,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppTextField(
            onChanged: (value) {},
            decoration: const InputDecoration(
              hintText: 'TR ID',
            ),
          ),
         
          AppTextField(
            onChanged: (value) {},
            decoration: const InputDecoration(
              hintText: 'Tissue ID',
            ),
          ),
        ],
      ),
    );
  }
}
