import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/technician/organ_harvest/presentation/widgets/oh_main_header.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_action_chip.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_checkbox_button.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_radio_button.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_segment_button.dart';
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
      height: AppSize.height(context) * 1.8,
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
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppCard(
            margin: null,
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
                    // counterText: "From Specular Evaluation",
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
          ),
          const SizedBox(height: 16),
          AppCard(
            margin: null,
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              runAlignment: WrapAlignment.start,
              alignment: WrapAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Clear and Intact?',
                      style: applyFiraSansFont(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    AppSegmentButton(
                        items: const ['Yes', 'No'], onSelected: (value) {})
                  ],
                ),
                const SizedBox(
                  width: AppSize.kl * 4,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 72,
                      width: 2,
                      color: AppColor.lightGrey,
                      margin: const EdgeInsets.only(right: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Haze',
                          style: applyFiraSansFont(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        AppRadioButton(
                          displayItems: const ['None', 'Mild'],
                          items: const ['None', 'Mild'],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 16),
          AppCard(
              margin: null,
              title: 'Exposure Keratitis',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: AppRadioButton(
                      displayItems: const [
                        'None',
                        'Mild',
                        'Mild Moderate',
                        'Moderate',
                        'Moderate Severe',
                        'Severe'
                      ],
                      items: const [
                        'None',
                        'Mild',
                        'Mild Moderate',
                        'Moderate',
                        'Moderate Severe',
                        'Severe'
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Location',
                    style: applyFiraSansFont(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: AppRadioButton(
                      displayItems: const [
                        'None',
                        'Mild',
                        'Mild Moderate',
                        'Moderate',
                        'Moderate Severe',
                        'Severe'
                      ],
                      items: const [
                        'None',
                        'Mild',
                        'Mild Moderate',
                        'Moderate',
                        'Moderate Severe',
                        'Severe'
                      ],
                    ),
                  ),
                ],
              )),
          const SizedBox(height: 16),
          AppCard(
              margin: null,
              title: 'Soughing',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: AppRadioButton(
                      displayItems: const [
                        'None',
                        'Mild',
                        'Mild Moderate',
                        'Moderate',
                        'Moderate Severe',
                        'Severe'
                      ],
                      items: const [
                        'None',
                        'Mild',
                        'Mild Moderate',
                        'Moderate',
                        'Moderate Severe',
                        'Severe'
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Area',
                    style: applyFiraSansFont(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const AppTextField(
                    decoration: InputDecoration(
                      labelText: 'Percentage of total cornea',
                      // counterText: "From Specular Evaluation",
                    ),
                  ),
                ],
              )),
          const SizedBox(height: 16),
          AppCard(
              margin: null,
              title: 'Debris Present?',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppSegmentButton(
                      items: const ['Yes', 'No'], onSelected: (value) {}),
                  const SizedBox(
                    height: 8,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    child: AppTextField(
                      decoration: InputDecoration(
                        labelText: 'If Yes, Describe',
                        // counterText: "From Specular Evaluation",
                      ),
                    ),
                  ),
                ],
              )),
          const SizedBox(height: 16),
          const AppCard(
              margin: null,
              title: 'Comments',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: AppTextField(
                      decoration: InputDecoration(
                        labelText: 'Comments',
                        // counterText: "From Specular Evaluation",
                      ),
                    ),
                  ),
                ],
              )),
          const SizedBox(height: 16),
          Text(
            "Approval",
            style: applyFiraSansFont(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          AppCard(
              margin: null,
              title: 'Suitable for Transplant?',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppSegmentButton(
                      items: const ['Yes', 'No'], onSelected: (value) {}),
                ],
              )),
          const SizedBox(height: 16),
          AppCard(
              margin: null,
              title: 'Suitable for only those checked:',
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                AppCheckboxList(
                  items: const [
                    'PK',
                    'EK',
                    'ALK',
                    'KLA',
                    'K-Pro',
                    'Therapeutic'
                  ],
                  displayItems: const [
                    'PK',
                    'EK',
                    'ALK',
                    'KLA',
                    'K-Pro',
                    'Therapeutic'
                  ],
                ),
                const Divider(),
                AppCheckboxList(
                  title: 'Not Suitable for any type of transplant, due to:',
                  items: const [
                    'Epithelium',
                    'Descemet’s Membrane',
                    'Endothelium',
                  ],
                  displayItems: const [
                    'Epithelium',
                    'Descemet’s Membrane',
                    'Endothelium',
                  ],
                ),
              ])),
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
