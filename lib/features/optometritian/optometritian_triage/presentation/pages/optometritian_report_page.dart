import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/pages/triage_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/widgets/eye_centre_details_cards.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_triage/presentation/widgets/optometritian_report_questionnaire_card.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_triage/presentation/widgets/optometritian_tumbling_report_card.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_h.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/eye_scan_tab_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../core/constants/app_icon.dart';
import '../providers/optometritian_report_provider.dart';

class OptometritianReportPage extends ConsumerWidget {
  const OptometritianReportPage({
    required this.id,
    required this.education,
    required this.employment,
    super.key,
  });

  final String id;
  final String education;
  final String employment;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(optometritianReportProvider);
    TriageUrgency urgency = model.calculateTriageUrgency();
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).popUntil((route) => route.isFirst);
        ref.read(triageProvider).resetTriage();
        return false;
      },
      child: Scaffold(
        key: model.scaffoldKey,
        appBar: CustomAppbar(
          leadingIcon: IconButton(
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
              ref.read(triageProvider).resetTriage();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColor.black.withOpacity(0.7),
            ),
          ),
          centerTitle: false,
          title: Text(
            "Assessment Report",
            style: applyFiraSansFont(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(12),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.circular(
                  AppSize.ksradius,
                ),
              ),
              child: Stack(
                children: [
                  SvgPicture.asset(
                    "assets/images/optometritian_report_top_bg.svg",
                    fit: BoxFit.fitWidth,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(AppSize.kspadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              id,
                              style: applyFiraSansFont(
                                  fontSize: 16,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "AID ${id}1",
                              style: applyRobotoFont(
                                  fontSize: 14,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              education,
                              style: applyRobotoFont(
                                  fontSize: 14,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              employment,
                              style: applyRobotoFont(
                                  fontSize: 14,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppSize.klheight,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                  vertical: AppSize.kspadding + 2,
                  horizontal: AppSize.kspadding + 5),
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(
                  AppSize.kmradius,
                ),
                boxShadow: [
                  BoxShadow(
                    color: urgency == TriageUrgency.ROUTINE
                        ? AppColor.green.withOpacity(0.4)
                        : urgency == TriageUrgency.PRIORITY
                            ? AppColor.orange.withOpacity(0.4)
                            : AppColor.red.withOpacity(0.4),
                    spreadRadius: 0.0,
                    blurRadius: 20,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
                border: Border.all(
                  width: 2,
                  color: urgency == TriageUrgency.ROUTINE
                      ? AppColor.green
                      : urgency == TriageUrgency.PRIORITY
                          ? AppColor.orange
                          : AppColor.red,
                ),
              ),
              child: Text(
                "Looks like you have difficulty in reading. Consult an eye specialist within 7 days.",
                style: applyRobotoFont(
                    fontSize: 16,
                    color: AppColor.black,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ),

            const SizedBox(
              height: AppSize.klheight,
            ),

            Text(
              "Recommended Center",
              style: applyFiraSansFont(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: AppSize.ksheight,
            ),
            const EyeCentreDetailsCards(),
            const SizedBox(
              height: AppSize.klheight,
            ),
            ListTile(
              tileColor: AppColor.white,
              onTap: () async {},
              leading: SvgPicture.asset(
                AppIcon.tollFree,
              ),
              trailing: SvgPicture.asset(
                AppIcon.call,
              ),
              title: const Text("Toll Free Number"),
              subtitle: const Text(
                "1800 1800 1800",
                style: TextStyle(
                  color: AppColor.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(
              height: AppSize.klheight,
            ),

            const OptometritianTumblingReportCard(),
            // const Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            // Text(
            //   "Category",
            //   style: applyRobotoFont(
            //     fontSize: 14,
            //     fontWeight: FontWeight.w400,
            //     color: Colors.black.withOpacity(0.8),
            //   ),
            // ),
            // const SizedBox(
            //   height: AppSize.ksheight,
            // ),
            // Container(
            //   padding:
            //       const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
            //   width: AppSize.width(context) * 0.35,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(40),
            //     color: model.getColorOnUrgency(urgency),
            //     border: Border.all(
            //       width: 1.5,
            //       color: model.getColorOnUrgency(urgency),
            //     ),
            //   ),
            //   child: Center(
            //     child: Text(
            //       model.getUrgencyText(urgency),
            //       style: applyRobotoFont(
            //         fontSize: 12,
            //         color: AppColor.white,
            //       ),
            //     ),
            //   ),
            // ),
            //   ],
            // ),
            // const SizedBox(height: AppSize.ksheight),
            const OptometritianReportQuestionnaireCard(),

            const EyeScanTabView(),
            const BrandingWidgetH(),
          ]),
        )),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                  ref.read(triageProvider).resetTriage();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const TriagePage(),
                    ),
                  );
                },
                child: const Text("Start New Assessment"),
              ),
              const SizedBox(
                width: AppSize.kmheight,
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                    ref.read(triageProvider).resetTriage();
                  },
                  child: const Text("Home"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
