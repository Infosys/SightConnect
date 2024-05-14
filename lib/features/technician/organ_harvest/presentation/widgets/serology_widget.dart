import 'package:eye_care_for_all/features/technician/organ_harvest/presentation/widgets/oh_main_header.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_radio_button.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_segment_button.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class SerologyWidget extends StatelessWidget {
  const SerologyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const OHMainHeader(
            title: "Serology Test",
          ),
          const SizedBox(height: 16),
          AppCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppRadioButton(
                  title: "1. HBsAG",
                  titleStyle: applyFiraSansFont(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  items: const [
                    "Positive",
                    "Negative",
                    "Indeterminate",
                    "Pending"
                  ],
                  displayItems: const [
                    "Positive",
                    "Negative",
                    "Indeterminate",
                    "Pending"
                  ],
                  onChanged: (value) {},
                ),
                AppRadioButton(
                  title: "1. HBsAG",
                  items: const [
                    "Positive",
                    "Negative",
                    "Indeterminate",
                    "Pending"
                  ],
                  displayItems: const [
                    "Positive",
                    "Negative",
                    "Indeterminate",
                    "Pending"
                  ],
                  onChanged: (value) {},
                ),
                AppRadioButton(
                  title: "1. HBsAG",
                  items: const [
                    "Positive",
                    "Negative",
                    "Indeterminate",
                    "Pending"
                  ],
                  displayItems: const [
                    "Positive",
                    "Negative",
                    "Indeterminate",
                    "Pending"
                  ],
                  onChanged: (value) {},
                ),
                AppRadioButton(
                  title: "1. HBsAG",
                  items: const [
                    "Positive",
                    "Negative",
                    "Indeterminate",
                    "Pending"
                  ],
                  displayItems: const [
                    "Positive",
                    "Negative",
                    "Indeterminate",
                    "Pending"
                  ],
                  onChanged: (value) {},
                )
              ],
            ),
          ),
          AppCard(
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              alignment: WrapAlignment.start,
              children: [
                const AppTextField(
                  decoration: InputDecoration(
                    labelText: "Reviewed by",
                  ),
                ),
                AppTextField.date(
                  context: context,
                  decoration: const InputDecoration(
                    labelText: "Date",
                  ),
                ),
                AppTextField.time(
                  context: context,
                  decoration: const InputDecoration(
                    labelText: "Time",
                  ),
                ),
                const AppTextField(
                  decoration: InputDecoration(
                    labelText: "Comments",
                    counterText: "Optional",
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Has the serology test been reviewed and determined to be acceptable?",
                      style: applyFiraSansFont(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppSegmentButton(
                      items: const ["Accept", "Reject"],
                      onSelected: (value) {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          AppCard(
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              alignment: WrapAlignment.start,
              children: [
                OutlinedButton.icon(
                  onPressed: () {},
                  label: const Text("Upload Document"),
                  icon: const Icon(Icons.upload_file),
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  label: const Text("Scan Document"),
                  icon: const Icon(Icons.camera_alt),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("Submit & Continue"),
              )
            ],
          )
        ],
      ),
    );
  }
}
