import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/eye_scan_provider.dart';

class PatientEyesReportPage extends ConsumerWidget {
  static const String routeName = "/patientEyesReportPage";
  const PatientEyesReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(patientEyeScanProvider);

    return Scaffold(
      appBar: const CustomAppBar(
        title: "Eye Report",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: const Row(
                children: [
                  CircleAvatar(),
                  Text("Ragavan Kumar"),
                  Spacer(),
                  Text("Male, 68 years")
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Scan Date: 30 June, 2023"),
                      Text("09:00 AM")
                    ],
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading:
                        ref.read(patientEyeScanProvider).leftEyeImage == null
                            ? const CircleAvatar()
                            : Image.file(
                                ref.read(patientEyeScanProvider).leftEyeImage!,
                              ),
                    title: const Text("Right Eye"),
                    subtitle: const Text(
                        "No loss of transparency of the lens of the eye. No fogging is detected."),
                    trailing: const Text("20/20"),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading:
                        ref.read(patientEyeScanProvider).leftEyeImage == null
                            ? const CircleAvatar()
                            : Image.file(
                                ref.read(patientEyeScanProvider).leftEyeImage!,
                              ),
                    title: const Text("Left Eye"),
                    subtitle: const Text(
                      "There is loss of transparency of the lens of the left eye. Fogging is detected.",
                    ),
                    trailing: const Text("6/20"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            //GET EXPERT HELP

            Row(
              children: [
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.camera),
                  label: const Text("Scan Again"),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text("View Previous Reports"),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),

            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("General Advice:"),
                  const SizedBox(
                    height: 8,
                  ),
                  ...model.generalAdvice.asMap().entries.map(
                        (entry) => Text("${entry.key + 1}. ${entry.value}"),
                      )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Watch what you eat"),
                  const SizedBox(
                    height: 8,
                  ),
                  ...model.generalAdvice.map(
                    (e) => Text(e),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
