import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_vision_acuity_test/presentation/pages/tumbling_test/tumbling_test.dart';
import 'package:flutter/material.dart';

class PatientVisionAcuityTestPage extends StatelessWidget {
  static const String routeName = '/patient-acuity-test';
  const PatientVisionAcuityTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vision Acuity Test'),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSize.width * 0.1,
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const TumblingTest();
            }));
          },
          child: const Text("Next"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.kspadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Visual acuity is a measure of the human eye’s ability to discern spatial details. It is the ability to distinguish letters or symbols on an eye chart at a certain distance",
              softWrap: true,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: AppSize.kmheight),
            Text(
              "Select the test to be performed",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: AppSize.kmheight),
            RadioListTile.adaptive(
              value: true,
              groupValue: true,
              dense: true,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (value) {},
              title: Text(
                "Tumbling E",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            RadioListTile.adaptive(
              value: true,
              groupValue: true,
              dense: true,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (value) {},
              title: Text(
                "Landolt C",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            const SizedBox(height: AppSize.kmheight),
            CheckboxListTile.adaptive(
              value: false,
              dense: true,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (value) {},
              title: Text(
                "Skip the steps to do",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
