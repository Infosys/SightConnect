import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/doctor/surgery/presentation/widgets/ophthalmic_history.dart';
import 'package:eye_care_for_all/features/doctor/surgery/presentation/widgets/pre_operative_checklist.dart';
import 'package:eye_care_for_all/features/doctor/surgery/presentation/widgets/recipient_details_card.dart';
import 'package:eye_care_for_all/features/doctor/surgery/presentation/widgets/tissue_details_card.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/widgets/doctor_info_card.dart';
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
                      child: _getFormSection(),
                    )
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
