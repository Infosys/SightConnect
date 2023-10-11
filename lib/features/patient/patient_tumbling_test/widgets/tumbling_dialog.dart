import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:flutter/material.dart';

void showTermsOfuseDialog(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => SizedBox(
      width: AppSize.width(context) * 0.8,
      child: BlurDialogBox(
        insetPadding: EdgeInsets.zero,
        title: Text(
          'Terms of Use',
          style: applyFiraSansFont(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        content: SizedBox(
          width: AppSize.width(context) * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Legal disclaimer: The content on this application is presented for informational purposes only.\n\nNever disregard professional medical advice from your healthcare provider, or delay in seeking it, because of using this application.\n\nThe developer of this app, cannot be held liable for any damages of any kind related to the usage of this software.\n\nREMEMBER: It’s people who resolve vision problems. Our technology is designed to help them do that.',
                style:
                    applyRobotoFont(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {},
                child: Text.rich(
                  const TextSpan(
                      text: 'Full terms of use',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      )),
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.primary,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text.rich(
                      TextSpan(
                        text: 'Accept',
                        style: applyRobotoFont(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: AppColor.primary),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                    
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    },
                    child: Text.rich(
                      TextSpan(
                        text: 'Decline',
                        style: applyRobotoFont(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: AppColor.primary),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: const [],
      ),
    ),
  );
}

// void _showTermsOfUseDialog(BuildContext context) {
//     showDialog(
//       barrierDismissible: false,
//       context: context,
//       builder: (BuildContext context) {
//         return BlurDialogBox(
//           title: Text(
//             'Tests to Perform',
//             style: applyFiraSansFont(fontSize: 24, fontWeight: FontWeight.w700),
//           ),
//           content: Text(
//             "Thanks for answering the questions. Based on the initial assessment you need to perform the below tests.\n\n1. Tumbling E\n2. Eye Photos\n\nYou will be guided step-by-step to perform each test. Follow instructions and perform the steps as instructed.",
//             textAlign: TextAlign.justify,
//             style: applyRobotoFont(
//               fontSize: 14,
//             ),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text(
//                 "Proceed",
//                 style: applyRobotoFont(fontSize: 14, color: AppColor.primary),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
