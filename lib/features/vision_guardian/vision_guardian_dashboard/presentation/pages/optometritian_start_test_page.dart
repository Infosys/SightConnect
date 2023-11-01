import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_questionnaire/pages/patient_triage_questionnaire_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OptometricianStartTestPage extends StatelessWidget {
  const OptometricianStartTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        leadingWidth: 60,
        titleSpacing: 0.0,
        centerTitle: false,
        leadingIcon: InkWell(
          customBorder: const CircleBorder(),
          onTap: () {},
          child: const Icon(CupertinoIcons.chevron_back),
        ),
        title: const Text("Let's Start your eye test"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: SvgPicture.asset(
              'assets/images/eye_assessment.svg',
              width: AppSize.width(context) * 0.4,
              height: AppSize.height(context) * 0.19,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            "This is easy and we’ll guide you every step of the way! You just need to answer a few simple questions and then we’ll have your visual tests.\n\nYou can ask your eye test expert for assistance at any point.",
            softWrap: true,
            style: applyRobotoFont(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: AppSize.ksheight,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const PatientTriageQuestionnairePage(),
                        ),
                      );
                    },
                    child: const Text('I Am Ready'),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
