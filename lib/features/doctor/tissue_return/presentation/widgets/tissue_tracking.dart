import 'package:eye_care_for_all/features/doctor/tissue_details/presentation/widgets/tissue_details_form_section.dart';
import 'package:eye_care_for_all/features/doctor/tissue_details/presentation/widgets/tissue_details_info_tile.dart';
import 'package:eye_care_for_all/features/doctor/tissue_return/presentation/widgets/tissue_return_form_section.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_drop_down.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class TissueTrackingSection extends StatelessWidget {
  const TissueTrackingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  TissueReturnFormSection(
      title: 'Tissue Tracking',
      children: [
        AppTextField(
          decoration: const InputDecoration(
          
            hintText: 'Tissue sent to',
            suffixIcon: Icon(Icons.search),
          ),
        ),
        Row(
          children: [
            Expanded(
              child:  AppTextField.date(
                      context: context,
                     
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                       
                        hintText: "Date",
                      ),
                    ),
            ),
             SizedBox(width: 10),
            Expanded(
              child: AppTextField.time(
                      context: context,
                     
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                       
                        hintText: "Time",
                      ),
                    ),
            ),
          ],
        ),
        
        AppTextField(
                    
                      decoration: const InputDecoration(
                       
                        hintText: 'Reason For Return',
                        suffixIcon: Icon(Icons.expand_more),
                      ),
                    ),
                      AppTextField(
                    
                      decoration: const InputDecoration(
                       
                        hintText: 'Method of Transport to Eye Bank',
                        suffixIcon: Icon(Icons.expand_more),
                      ),
                    ),
                      AppTextField(
                    
                      decoration: const InputDecoration(
                       
                        hintText: 'Storage conditions during absence',
                        suffixIcon: Icon(Icons.expand_more),
                      ),
                    ),
      
      ],
    );
  }
}
