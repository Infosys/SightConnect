import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_onboarding/presentation/pages/vg_onboarding_OTP.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_icon.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class VgOnboardingMobileNumber extends StatelessWidget {
  const VgOnboardingMobileNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(AppSize.kl),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSize.kl * 1.2),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.white,
                      ),
                      child: SvgPicture.asset(
                        AppIcon.logo,
                        height: 30,
                        width: 30,
                      ),
                    ),
                    const SizedBox(
                      width: AppSize.km,
                    ),
                    Text(
                      'Eye Care For All',
                      style: applyFiraSansFont(
                        color: AppColor.darkGrey,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSize.kl * 1.2),
                Text(
                  'Verify Phone Number',
                  style: applyFiraSansFont(
                    color: AppColor.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 19,
                  ),
                ),
                const SizedBox(height: AppSize.kl * 1.2),
                TextField(
                    decoration: const InputDecoration(
                      labelText: 'Mobile Number',
                      contentPadding:
                          EdgeInsets.only(top: AppSize.km, bottom: AppSize.km),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly]),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: AppSize.width(context),
                  height: AppSize.kl * 1.8,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VGOnboardingOtp(),
                        ),
                      );
                    },
                    child: Text(
                      "Get OTP",
                      style:
                          applyRobotoFont(fontSize: 14, color: AppColor.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSize.km,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: applyRobotoFont(
                          color: AppColor.darkGrey, fontSize: 14),
                    ),
                    Text(
                      " Sign Up",
                      style: applyRobotoFont(
                          color: AppColor.primary, fontSize: 14),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
