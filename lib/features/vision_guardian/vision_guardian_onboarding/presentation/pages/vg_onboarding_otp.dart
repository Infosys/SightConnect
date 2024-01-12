import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_onboarding/presentation/pages/vg_onboarding_details.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class VGOnboardingOtp extends StatefulWidget {
  const VGOnboardingOtp({super.key});

  @override
  State<VGOnboardingOtp> createState() => _VGOnboardingOtpState();
}

class _VGOnboardingOtpState extends State<VGOnboardingOtp> {
  bool _onEditing = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(AppSize.klpadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSize.klheight * 1.2),
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
                      width: AppSize.kmwidth,
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
                const SizedBox(height: AppSize.klheight * 1.2),
                Text(
                  'Verify Phone Number',
                  style: applyFiraSansFont(
                    color: AppColor.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 19,
                  ),
                ),
                const SizedBox(height: AppSize.klheight * 1.2),
                Text(
                  'Please enter the OTP we have sent to ********90',
                  style: applyRobotoFont(
                    color: AppColor.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: AppSize.klheight * 1.2),
                Center(
                  child: VerificationCode(
                    padding: const EdgeInsets.all(8),
                    textStyle: applyFiraSansFont(),
                    keyboardType: TextInputType.number,
                    underlineColor: AppColor
                        .primary, // If this is null it will use primaryColor: Colors.red from Theme
                    length: 4,
                    cursorColor: Colors
                        .blue, // If this is null it will default to the ambient
                    // clearAll is NOT required, you can delete it
                    // takes any widget, so you can implement your design

                    onCompleted: (String value) {},
                    onEditing: (bool value) {
                      setState(() {
                        _onEditing = value;
                      });
                      if (!_onEditing) FocusScope.of(context).unfocus();
                    },
                  ),
                ),
                const SizedBox(height: AppSize.klheight * 1.2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn’t receive the OTP? ",
                      style: applyRobotoFont(fontSize: 12),
                    ),
                    Text(" Resend OTP",
                        style: applyRobotoFont(
                            fontSize: 12, color: AppColor.primary))
                  ],
                ),
              ],
            ),
            SizedBox(
              width: AppSize.width(context),
              height: AppSize.klheight * 1.8,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const VgOnboardingDetails(),
                    ),
                  );
                },
                child: Text(
                  "Verify and Proceed",
                  style: applyRobotoFont(
                    fontSize: 14,
                    color: AppColor.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Step> getSteps() => [
        Step(title: const Text("Personal"), content: Container()),
        Step(title: const Text("Organisation"), content: Container())
      ];
}
