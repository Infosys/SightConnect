import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/pages/triage_page.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/widgets/patient_id_input.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/widgets/professions_input.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
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

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppbar(
        title: const Text("Start Assessment"),
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
                        "Add Patient Information",
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
                            ? () {
                                ref
                                    .read(optometritianAddPatientProvider)
                                    .setAssessmentStartTime(DateTime.now());
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const TriagePage(),
                                  ),
                                );
                              }
                            : null,
                        child: const Text("Start Assessment"),
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
