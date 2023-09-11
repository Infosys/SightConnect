import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class NearbyVisionCentersCard extends StatelessWidget {
  const NearbyVisionCentersCard({super.key, required this.data});
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(AppSize.kspadding),
      decoration: BoxDecoration(
        color: AppColor.kWhite,
        borderRadius: BorderRadius.circular(AppSize.ksradius),
      ),
      width: Responsive.isMobile(context)
          ? AppSize.width(context) * 0.86
          : AppSize.width(context) * 0.35,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(data['hospitalName'],style: applyRobotoFont(
              fontSize: 14, fontWeight: FontWeight.w700,
            ),),          
           ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                const Icon(Icons.pin_drop_outlined, color: AppColor.kBlue,),
                const SizedBox(width: 5,), 
                Flexible(child: Text(data['location'], style: applyRobotoFont(
                       fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.kGrey
                ), maxLines: 1, overflow: TextOverflow.ellipsis,)),
              ],
            ),          
           ),
            Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 10, left: 10, right: 10),
            child: Row(
              children: [
                const Icon(Icons.phone, color: AppColor.kBlue,), 
                const SizedBox(width: 5,), 
                Text(data['mobileNumber'], style: applyRobotoFont(
                   fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.kGrey
                ),),
              ],
            ),          
           ),        
        ],
      ),
    );
  }
}
