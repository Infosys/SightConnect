import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/presentation/widgets/cataract_advice_cards.dart';
import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/presentation/widgets/cataract_expert_help_card.dart';
import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/presentation/widgets/cataract_eye_result_card.dart';
import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/presentation/widgets/cataract_report_details_header.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientEyesReportPage extends ConsumerWidget {
  static const String routeName = "/patientEyesReportPage";
  const PatientEyesReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColor.kScaffold,
      appBar: const CustomAppBar(
        title: "Eye Report",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PatientDetailHeader(),

            const SizedBox(
              height: AppSize.kspadding,
            ),

            const EyeResultImageCard(),

            const SizedBox(
              height: AppSize.kspadding,
            ),

            const ExperthelpCard(),

            //scan now buttons

            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.klpadding, vertical: AppSize.kmpadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton.icon(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      fixedSize: const Size(140, 40),
                      side: const BorderSide(color: AppColor.kPrimary),
                    ),
                    clipBehavior: Clip.hardEdge,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera,
                      size: 20,
                    ),
                    label: Text(
                      "Scan Again",
                      style: applyRobotoFont(
                          color: AppColor.kPrimary,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,),
                    ),
                  ),
                  OutlinedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      fixedSize: const Size(180, 40),
                      side: const BorderSide(color: AppColor.kPrimary),
                    ),
                    clipBehavior: Clip.hardEdge,
                    onPressed: () {},
                    child: Text(
                      "View Previous Reports",
                      style: applyRobotoFont(
                          color: AppColor.kPrimary,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),

            //scan now buttons end

            const SizedBox(
              height: AppSize.kspadding,
            ),

            const AdviceCards(),
          ],
        ),
      ),
    );
  }
}

