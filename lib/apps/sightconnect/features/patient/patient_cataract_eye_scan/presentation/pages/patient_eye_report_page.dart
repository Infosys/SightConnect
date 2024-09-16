import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_cataract_eye_scan/presentation/widgets/cataract_advice_cards.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_cataract_eye_scan/presentation/widgets/cataract_eye_result_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_cataract_eye_scan/presentation/widgets/cataract_report_details_header.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../patient_services/presentation/pages/patient_services_page.dart';

class PatientEyesReportPage extends ConsumerWidget {
  static const String routeName = "/patientEyesReportPage";
  const PatientEyesReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isCataraact =
        ref.watch(globalProvider).vaMode == VisionAcuityMode.CATARACT;
    final loc = context.loc!;
    return Scaffold(
      backgroundColor: AppColor.scaffold,
      appBar: CustomAppbar(
        title: isCataraact
            ? Text(loc.patientCataractEyeReport)
            : Text(loc.patientRedEyeReport),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PatientDetailHeader(),

            const SizedBox(
              height: AppSize.ks,
            ),

            const EyeResultImageCard(),

            const SizedBox(
              height: AppSize.ks,
            ),

            // const ExperthelpCard(),

            //scan now buttons

            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.kl, vertical: AppSize.km),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: OutlinedButton.icon(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        fixedSize: const Size(140, 40),
                        side: const BorderSide(color: AppColor.primary),
                      ),
                      clipBehavior: Clip.hardEdge,
                      onPressed: () {
                        //push and remove until route.isfirst
                        Navigator.popUntil(context, (route) => route.isFirst);
                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return const PatientServicesPage();
                          },
                        );
                      },
                      icon: const Icon(
                        Icons.camera,
                        size: 20,
                      ),
                      label: Text(
                        loc.patientScanAgain,
                        style: applyRobotoFont(
                          color: AppColor.primary,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  // Flexible(
                  //   child: OutlinedButton(
                  //     style: ElevatedButton.styleFrom(
                  //       padding: const EdgeInsets.all(0),
                  //       fixedSize: const Size(180, 40),
                  //       side: const BorderSide(color: AppColor.primary),
                  //     ),
                  //     clipBehavior: Clip.hardEdge,
                  //     onPressed: () {},
                  //     child: Text(
                  //       "View Previous Reports",
                  //       style: applyRobotoFont(
                  //           color: AppColor.primary,
                  //           fontSize: 13,
                  //           fontWeight: FontWeight.w500),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),

            //scan now buttons end

            const SizedBox(
              height: AppSize.ks,
            ),

            const AdviceCards(),
          ],
        ),
      ),
    );
  }
}
