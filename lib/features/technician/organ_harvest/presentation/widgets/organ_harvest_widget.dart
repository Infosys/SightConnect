import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/technician/organ_harvest/presentation/widgets/oh_main_header.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_action_chip.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_radio_button.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class OrganHarvestWidget extends StatelessWidget {
  const OrganHarvestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OHMainHeader(
            title: "Organ Harvest",
          ),
          SizedBox(height: 16),
          _EyesTypeTab(),
        ],
      ),
    );
  }
}

class _EyesTypeTab extends StatelessWidget {
  const _EyesTypeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.height(context) * 0.6,
      child: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          body: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TabBar(
                indicatorColor: AppColor.primary,
                indicatorWeight: 2,
                dividerColor: AppColor.blue,
                unselectedLabelStyle: applyFiraSansFont(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColor.grey,
                ),
                labelStyle: applyFiraSansFont(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                tabs: const [
                  Tab(
                    child: Text('Left Eye'),
                  ),
                  Tab(
                    child: Text('Right Eye'),
                  ),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    _LeftEyeTab(),
                    _RightEyeTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LeftEyeTab extends StatelessWidget {
  const _LeftEyeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppCard(
            title: "From Penlight Exam:",
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              runAlignment: WrapAlignment.start,
              alignment: WrapAlignment.start,
              children: [
                AppRadioButton(
                  displayItems: const ['Phakic', 'Pseudophakic', 'Aphakic'],
                  items: const ['Phakic', 'Pseudophakic', 'Aphakic'],
                ),
                const AppTextField(
                  decoration: InputDecoration(
                    labelText: 'Cell Count (per mm2)',
                    counterText: "From Specular Evaluation",
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Slit Lamp Cornea Evaluation",
                style: applyFiraSansFont(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              AppActionChip(
                maxWidth: AppSize.width(context),
                minWidth: AppSize.width(context),
                items: const [
                  'Epithelium',
                  'Endothelium',
                  'Stroma',
                  'Descemet'
                ],
                onSelected: (value) {},
              )
            ],
          )
        ],
      ),
    );
  }
}

class _RightEyeTab extends StatelessWidget {
  const _RightEyeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppCard(
            title: "From Penlight Exam:",
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              runAlignment: WrapAlignment.start,
              alignment: WrapAlignment.start,
              children: [
                AppRadioButton(
                  displayItems: const ['Phakic', 'Pseudophakic', 'Aphakic'],
                  items: const ['Phakic', 'Pseudophakic', 'Aphakic'],
                ),
                const AppTextField(
                  decoration: InputDecoration(
                    labelText: 'Cell Count (per mm2)',
                    counterText: "From Specular Evaluation",
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Slit Lamp Cornea Evaluation",
                style: applyFiraSansFont(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              AppActionChip(
                maxWidth: AppSize.width(context),
                minWidth: AppSize.width(context),
                items: const [
                  'Epithelium',
                  'Endothelium',
                  'Stroma',
                  'Descemet'
                ],
                onSelected: (value) {},
              )
            ],
          )
        ],
      ),
    );
  }
}
