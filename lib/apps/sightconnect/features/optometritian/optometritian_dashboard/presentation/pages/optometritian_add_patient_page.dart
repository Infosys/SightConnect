import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/pages/triage_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/core/providers/global_language_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/optometritian/optometritian_dashboard/presentation/widgets/patient_id_input.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/optometritian/optometritian_dashboard/presentation/widgets/professions_input.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/translation_pop_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/optometritian_add_patient_provider.dart';
import '../widgets/education_qualifications_input.dart';

class OptometricianAddPatientPage extends StatefulHookConsumerWidget {
  const OptometricianAddPatientPage({Key? key}) : super(key: key);

  @override
  ConsumerState<OptometricianAddPatientPage> createState() =>
      _OptometricianAddPatientPage();
}

class _OptometricianAddPatientPage
    extends ConsumerState<OptometricianAddPatientPage> {
  @override
  Widget build(BuildContext context) {
    var data = ref.watch(optometritianAddPatientProvider);

    final isButtonEnabled = useState<bool>(false);

    useEffect(() {
      listener() {
        final patientId = data.patientIdController.text;
        final validPatientId = RegExp(r'^[0-9a-zA-Z\-]+$').hasMatch(patientId);
        isButtonEnabled.value = validPatientId;
      }

      data.patientIdController.addListener(listener);
      return () {
        data.patientIdController.removeListener(listener);
      };
    }, const []);

    final loc = context.loc!;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppbar(
        title: Text(loc.startAssessment),
        centerTitle: false,
        leadingIcon: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios_rounded)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: AppColor.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        loc.optoAddPatientInfo,
                        style: applyRobotoFont(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const PatientIdInput(),
                      const SizedBox(
                        height: 20,
                      ),
                      const EducationalQualificationInput(),
                      const SizedBox(
                        height: 20,
                      ),
                      const ProfessionsInput(),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: AppSize.height(context) * 0.19),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ElevatedButton(
                        onPressed: isButtonEnabled.value
                            ? () async {
                                // ADD LANGUAGE PREFERENCE
                                final currentLocaleCode = ref
                                    .read(globalLanguageProvider)
                                    .currentLocale;
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  enableDrag: false,
                                  isDismissible: false,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) => Container(
                                    height: MediaQuery.of(context).size.height,
                                    color: Colors.white,
                                    child: TranslationPopUp(
                                      locale: currentLocaleCode,
                                    ),
                                  ),
                                ).whenComplete(() {
                                  ref
                                      .read(optometritianAddPatientProvider)
                                      .setAssessmentStartTime(DateTime.now());

                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const TriagePage(),
                                    ),
                                  );
                                });
                              }
                            : null,
                        child: Text(loc.startAssessment),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
