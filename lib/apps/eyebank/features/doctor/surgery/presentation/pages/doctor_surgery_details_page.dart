import 'package:eye_care_for_all/apps/eyebank/features/doctor/surgery/presentation/widgets/ophthalmic_history.dart';
import 'package:eye_care_for_all/apps/eyebank/features/doctor/surgery/presentation/widgets/pre_operative_checklist.dart';
import 'package:eye_care_for_all/apps/eyebank/features/doctor/surgery/presentation/widgets/recipient_details_card.dart';
import 'package:eye_care_for_all/apps/eyebank/features/doctor/surgery/presentation/widgets/tissue_details_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/widgets/doctor_info_card.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_checkbox_button.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class DoctorSurgeryDetailsPage extends StatelessWidget {
  const DoctorSurgeryDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Surgery Details'),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.kl),
          child: Responsive.isMobile(context)
              ? Column(
                  children: [
                    _getInfoSection(),
                    const SizedBox(
                      height: AppSize.km,
                    ),
                    _getFormSection(),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      constraints: const BoxConstraints(
                        maxWidth: 400,
                      ),
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: _getInfoSection(),
                    ),
                    const SizedBox(
                      width: AppSize.kl,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        _getTissueSection(context),
                        const SizedBox(height: AppSize.km),
                        _getFormSection(),
                      ],
                    ))
                  ],
                ),
        ),
      ),
      bottomNavigationBar: Container(
        color: AppColor.white,
        height: 80,
        padding: const EdgeInsets.all(AppSize.km),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Submit'),
        ),
      ),
    );
  }

  _getTissueSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Sugery Details',
          style: applyFiraSansFont(
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 16),
        AppCard(
            margin: null,
            child: Wrap(
              spacing: 62,
              runSpacing: 16,
              runAlignment: WrapAlignment.start,
              alignment: WrapAlignment.start,
              children: [
                const AppTextField(
                  decoration: InputDecoration(
                    labelText: 'Surgery Location (Hospital)',
                    suffixIcon: Icon(
                      Icons.search,
                      size: 24,
                      color: Colors.grey,
                    ),
                    // counterText: "From Specular Evaluation",
                  ),
                ),
                AppTextField.date(
                  context: context,
                  decoration: const InputDecoration(
                    labelText: "Surgery Date",
                  ),
                ),
                AppTextField.time(
                  context: context,
                  decoration: const InputDecoration(
                    labelText: "Surgery Time",
                  ),
                ),
              ],
            )),
        const SizedBox(height: 16),
        AppCard(
          margin: null,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Eye involved or eye to be transplanted',
                style: applyFiraSansFont(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              AppCheckboxList(
                items: const [
                  'Left Eye',
                  'Right Eye',
                ],
                displayItems: const [
                  'Left Eye',
                  'Right Eye',
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Tissue Type',
                style: applyFiraSansFont(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              AppCheckboxList(
                items: const [
                  'Cornea (Whole)',
                  'Pre-cut Cornea',
                  'Sclera',
                ],
                displayItems: const [
                  'Cornea (Whole)',
                  'Pre-cut Cornea',
                  'Sclera',
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Transplant Procedure',
                style: applyFiraSansFont(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              AppCheckboxList(
                items: const [
                  'PKP',
                  'Therapeutic',
                  'EK (DSEK/DSAEK?DMEK',
                  'ALK (DALK)',
                  'Other (KLAI, K-Pro, Other)',
                ],
                displayItems: const [
                  'PKP',
                  'Therapeutic',
                  'EK (DSEK/DSAEK?DMEK',
                  'ALK (DALK)',
                  'Other (KLAI, K-Pro, Other)',
                ],
              ),
              const SizedBox(height: 16),
              const AppTextField(
                decoration: InputDecoration(
                  labelText: 'Other',
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  _getInfoSection() {
    return Column(
      children: [
        DoctorInfoCard(
          name: 'Dr. Prashant Garg',
          id: '344656',
          hospitalName: 'LVP Eye Institute - KAR',
          imageUrl: 'assets/images/doctor.png',
        ),
        const SizedBox(
          height: AppSize.km,
        ),
        const TissueDetailsCard(),
      ],
    );
  }

  _getFormSection() {
    return const Column(
      children: [
        RecipientDetailsCard(),
        SizedBox(
          height: AppSize.km,
        ),
        OphthalmicHistory(),
        SizedBox(
          height: AppSize.km,
        ),
        PreOperativeChecklist(),
      ],
    );
  }
}
