import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/pages/vg_member_details_form_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VisionGuardianFloatingAddPatientAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
              Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const VisionGuardianMemberDetailsPage(),
            ),
          ); 
      },
      child: Container(
        width: AppSize.width(context) * 0.35,
        height: AppSize.height(context) * 0.06,
        padding: const EdgeInsets.only(bottom: AppSize.ksheight - 1),
        margin: const EdgeInsets.only(bottom: AppSize.klheight),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.yellow,
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: AppColor.black,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: '+ ',
                    style: applyRobotoFont(
                        fontSize: 21,
                        color: AppColor.black,
                        fontWeight: FontWeight.w300)),
                TextSpan(
                  text: 'Add Patient',
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
