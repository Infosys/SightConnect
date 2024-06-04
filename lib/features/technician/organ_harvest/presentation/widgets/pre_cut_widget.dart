import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/technician/organ_harvest/providers/organ_harvest_provider.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_radio_button.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PreCutWidget extends HookWidget {
  const PreCutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var isCutExecuted = useState(false);
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pre-Cut',
                style: applyFiraSansFont(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (Responsive.isSemiDesktop(context))
                OutlinedButton.icon(
                  onPressed: () {
                    isCutExecuted.value = !isCutExecuted.value;
                  },
                  label: const Text("Scan Document"),
                  icon: const Icon(Icons.camera_alt),
                )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    const AppCard(
                      margin: null,
                      child: Wrap(
                        spacing: 62,
                        runSpacing: 16,
                        runAlignment: WrapAlignment.start,
                        alignment: WrapAlignment.start,
                        children: [
                          AppTextField(
                            decoration: InputDecoration(
                              labelText: 'Pre - Cut Tissue ID#',

                              // counterText: "From Specular Evaluation",
                            ),
                          ),
                          AppTextField(
                            decoration: InputDecoration(
                              labelText: 'Cut Technician',
                              suffixIcon: Icon(
                                Icons.search,
                                size: 24,
                                color: Colors.grey,
                              ),
                              // counterText: "From Specular Evaluation",
                            ),
                          ),
                          AppTextField(
                            decoration: InputDecoration(
                              labelText: 'Circulator',
                              suffixIcon: Icon(
                                Icons.search,
                                size: 24,
                                color: Colors.grey,
                              ),
                              // counterText: "From Specular Evaluation",
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Observations During Cutting Tissue #1",
                      style: applyFiraSansFont(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 16),
                    AppCard(
                      margin: null,
                      child: Responsive.isSemiDesktop(context)
                          ? const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(child: _CutExecuted()),
                                SizedBox(width: 24),
                                Expanded(child: _StorageMedia())
                              ],
                            )
                          : const Column(
                              children: [
                                _CutExecuted(),
                                SizedBox(
                                  height: 16,
                                ),
                                _StorageMedia()
                              ],
                            ),
                    ),
                    const SizedBox(height: 16),
                    OutlinedButton(
                        onPressed: () {},
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.add_circle_outline),
                            SizedBox(width: 8),
                            Text("Add Tissue")
                          ],
                        )),
                    const SizedBox(height: 16),
                    const Divider(),
                    const SizedBox(height: 16),
                    Consumer(
                      builder: (context, ref, child) {
                        return ElevatedButton(
                          onPressed: () {
                            final provider = ref.read(organHarvestProvider);
                            provider.setStep(6);
                            provider.setCompleted(true);
                          },
                          child: const Text("Submit"),
                        );
                      },
                    )
                  ],
                ),
              ),
              Visibility(
                visible:
                    isCutExecuted.value && Responsive.isSemiDesktop(context),
                child: Expanded(
                  child: AppCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Scan Document',
                          style: applyFiraSansFont(fontSize: 18),
                        ),
                        const SizedBox(
                          height: AppSize.kl,
                        ),
                        Text(
                          'Preview:',
                          style: applyFiraSansFont(fontSize: 16),
                        ),
                        const SizedBox(
                          height: AppSize.ks,
                        ),
                        Container(
                          height: 600,
                          color: AppColor.lightGrey,
                        ),
                        const SizedBox(
                          height: AppSize.kl,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.refresh),
                              SizedBox(width: 8),
                              Text('Re-upload'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _CutExecuted extends StatelessWidget {
  const _CutExecuted({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: AppRadioButton(
            title: 'Cut Executed',
            items: const ['EK', 'IEK', 'IEALK', 'UT-EK', 'DMAEK'],
            displayItems: const ['EK', 'IEK', 'IEALK', 'UT-EK', 'DMAEK'],
          ),
        ),
        const SizedBox(height: 16),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Media Lot #',
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: AppTextField.date(
                context: context,
                decoration: const InputDecoration(
                  labelText: "Tissue Removed from Medium Date",
                ),
              ),
            ),
            const SizedBox(
              width: AppSize.km,
            ),
            AppTextField.time(
              maxWidth: 120,
              minWidth: 120,
              context: context,
              decoration: const InputDecoration(
                labelText: "Time",
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: AppTextField.date(
                context: context,
                decoration: const InputDecoration(
                  labelText: "Tissue returned to Medium Date",
                ),
              ),
            ),
            const SizedBox(
              width: AppSize.km,
            ),
            AppTextField.time(
              maxWidth: 120,
              minWidth: 120,
              context: context,
              decoration: const InputDecoration(
                labelText: "Time",
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        const AppTextField(
          decoration: InputDecoration(
            labelText: "Cornea Full Thickness (microns)",
          ),
        ),
        const SizedBox(height: 16),
        const AppTextField(
          decoration: InputDecoration(
            labelText: "Graft Thickness (microns)",
          ),
        ),
        const SizedBox(height: 16),
        const AppTextField(
          decoration: InputDecoration(
            labelText: "Bed Size (mm)",
          ),
        ),
      ],
    );
  }
}

class _StorageMedia extends StatelessWidget {
  const _StorageMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppRadioButton(
          title: 'Storage Media',
          items: const ['MK', 'Optisol-GS', 'Cornisol', 'Life 4 C'],
          displayItems: const ['MK', 'Optisol-GS', 'Cornisol', 'Life 4 C'],
        ),
        SizedBox(height: Responsive.isSemiDesktop(context) ? 90 : 16),
        Row(
          children: [
            Expanded(
              child: AppTextField.date(
                context: context,
                decoration: const InputDecoration(
                  labelText: "Tissue returned to Medium Date",
                ),
              ),
            ),
            const SizedBox(
              width: AppSize.km,
            ),
            AppTextField.time(
              maxWidth: 120,
              minWidth: 120,
              context: context,
              decoration: const InputDecoration(
                labelText: "Time",
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        AppRadioButton(
          title: 'Storage Media',
          items: const ['200', '250', '300', '350', '400'],
          displayItems: const ['200', '250', '300', '350', '400'],
        ),
        const SizedBox(height: 16),
        const AppTextField(
          decoration: InputDecoration(
            labelText: "Thickness after Epithelium removed (microns)",
          ),
        ),
        const SizedBox(height: 16),
        const AppTextField(
          decoration: InputDecoration(
            labelText: "Cap Thickness(microns)",
          ),
        ),
        const SizedBox(height: 16),
        const AppTextField(
          decoration: InputDecoration(
            labelText: "Cut Speed (seconds)",
          ),
        ),
      ],
    );
  }
}
