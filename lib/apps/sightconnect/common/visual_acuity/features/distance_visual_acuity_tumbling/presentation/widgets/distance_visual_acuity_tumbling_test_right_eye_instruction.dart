import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_visual_acuity_provider.dart';
import 'package:eye_care_for_all/l10n/app_localizations.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

import '../pages/distance_visual_acuity_initiate_page.dart';

class DistanceVisualAcuityTumblingRightEyeInstruction extends ConsumerWidget {
  const DistanceVisualAcuityTumblingRightEyeInstruction({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return TraceableWidget(
      actionName:
          'VisualAcuity Tumbling LeftEye Instruction Page - Long Distance',
      child: Scaffold(
        appBar: CustomAppbar(
          centerTitle: true,
          title: Text(loc.distanceVaTopAppBarDistanceVisionTest),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppSize.height(context) * 0.1,
              ),
              Text(
                "Please maintain a 2-meter distance from the screen",
                style: applyFiraSansFont(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: AppSize.kl + 10,
              ),
              Center(
                child: Text(
                  loc.visualAcuityRightEyeHeader,
                  style: applyFiraSansFont(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),
              SizedBox(
                height: AppSize.height(context) * 0.1,
              ),

              Text(
                AppLocalizations.of(context)!.visualAcuityRightEyeInstructions,
                style: applyRobotoFont(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
              // const SizedBox(
              //   height: AppSize.km + 2,
              // ),

              // Center(
              //   child: Container(
              //     padding: const EdgeInsets.all(8),
              //     decoration: BoxDecoration(
              //       color: AppColor.white,
              //       borderRadius: BorderRadius.circular(16),
              //       boxShadow: applyLightShadow(),
              //     ),
              //     height: AppSize.height(context) * 0.5,
              //     width: AppSize.width(context) * 0.7,
              //     child: Image.asset(
              //       "assets/images/visualAcuityRightEye.png",
              //     ),
              //   ),
              // ),

              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        ref
                            .read(globalVisualAcuityProvider)
                            .setShortDistanceTest(false);
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const DistanceVisualAcuityInitiatePage(),
                          ),
                        );
                      },
                      child: Text(loc.continueButton),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
