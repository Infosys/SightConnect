import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_onboarding/presentation/pages/vg_onboarding_details.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_onboarding/presentation/pages/vg_onboarding_personal.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/pages/vg_profile.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class VgOnboardingOTP extends StatefulWidget {
  const VgOnboardingOTP({super.key});

  @override
  State<VgOnboardingOTP> createState() => _VgOnboardingOTPState();
}

class _VgOnboardingOTPState extends State<VgOnboardingOTP> {
  @override
  bool _onEditing = true;
  String? _code;
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

                    onCompleted: (String value) {
                      setState(() {
                        _code = value;
                      });
                    },
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
                  style: applyRobotoFont(fontSize: 14, color: AppColor.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Step> getSteps() => [
        Step(title: Text("Personal"), content: Container()),
        Step(title: Text("Organisation"), content: Container())
      ];
}


// class VgOnboarsdingOTP extends StatelessWidget {
//   const VgOnboarsdingOTP({super.key});

//   @override
//   Widget build(BuildContext context) {
  
//     return Container(
//       child: Center(
//         child: VerificationCode(
//     textStyle: TextStyle(fontSize: 20.0, color: Colors.red[900]),
//     keyboardType: TextInputType.number,
//     underlineColor: Colors.amber, // If this is null it will use primaryColor: Colors.red from Theme
//     length: 4,
//     cursorColor: Colors.blue, // If this is null it will default to the ambient
//     // clearAll is NOT required, you can delete it
//     // takes any widget, so you can implement your design
//     clearAll: Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Text(
//         'clear all',
//         style: TextStyle(fontSize: 14.0, decoration: TextDecoration.underline, color: Colors.blue[700]),
//       ),
//     ),
//     onCompleted: (String value) {
//       setState(() {
//         _code = value;
//       });
//     },
//     onEditing: (bool value) {
//       setState(() {
//         _onEditing = value;
//       });
//       if (!_onEditing) FocusScope.of(context).unfocus();
//     },
//   ),,
//       ),
//     );
//   }
// }
