import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/doctor/adverse_reaction_report/presentation/widgets/adverse_reaction_section.dart';
import 'package:eye_care_for_all/features/doctor/adverse_reaction_report/presentation/widgets/donor_information_section.dart';
import 'package:eye_care_for_all/features/doctor/adverse_reaction_report/presentation/widgets/final_sign_off_section.dart';
import 'package:eye_care_for_all/features/doctor/adverse_reaction_report/presentation/widgets/micro_biology_section.dart';
import 'package:eye_care_for_all/features/doctor/adverse_reaction_report/presentation/widgets/recipient_information_section.dart';
import 'package:eye_care_for_all/features/doctor/adverse_reaction_report/presentation/widgets/recipient_outcome_section.dart';
import 'package:eye_care_for_all/features/doctor/adverse_reaction_report/presentation/widgets/surgery_information_section.dart';
import 'package:eye_care_for_all/features/doctor/adverse_reaction_report/presentation/widgets/tissue_source_information_section.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AdverseReactionReportPage extends HookWidget {
  const AdverseReactionReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    var showMore = useState<bool>(true);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Adverse Reaction Report'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSize.km),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      showMore.value
                          ? 'Note: The Receiving Surgeon is responsible for reporting any adverse reaction to the appropriate eye bank facility within 24 hours of the occurrence. A reportable adverse reaction is any communicable or other disease transmissible by, and attribute to, transplantation of donor eye tissue, including infection (as manifested by endophthalmitis, keratitis, or systemic viral disease) and biologic dysfunction (such as immediate donor endothelial failure or donor corneal dystrophy). If no adverse reaction is observed within 30 days, please do signature at the end of the sheet & place in recipient folder. if an adverse reaction is observed, please complete all the items below. Incomplete items will require follow-up.'
                          : 'Note: The Receiving Surgeon is responsible for reporting any adverse reaction',
                      softWrap: true,
                      style: applyRobotoFont(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          showMore.value = !showMore.value;
                        },
                        child: Text(
                          showMore.value ? 'Show less' : 'Show more',
                          style: applyRobotoFont(
                            color: Colors.blue,
                            fontSize: 12,
                          ),
                        )),
                  ],
                ),
                const SizedBox(height: AppSize.km),
                const SurgeryInformationSection(),
                const SizedBox(height: AppSize.km),
                const RecipientInformationSection(
                  onTap: null,
                ),
                const SizedBox(height: AppSize.km),
                const DonorInformationSection(),
                const SizedBox(height: AppSize.km),
                const AdverseReactionSection(),
                const SizedBox(height: AppSize.km),
                const TissueSourceInformationSection(),
                const SizedBox(height: AppSize.km),
                const RecipientOutcomeSection(),
                const SizedBox(height: AppSize.km),
                const MicroBiologySection(),
                const SizedBox(height: AppSize.km),
                const FinalSignOffSection(),
                const SizedBox(height: AppSize.km),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: Responsive.isMobile(context)
              ? const EdgeInsets.all(AppSize.km)
              : EdgeInsets.fromLTRB(AppSize.km, AppSize.km,
                  AppSize.width(context) / 1.1, AppSize.km),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Submit'),
          ),
        ));
  }
}
