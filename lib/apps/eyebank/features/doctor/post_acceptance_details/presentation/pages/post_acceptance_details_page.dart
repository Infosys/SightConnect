import 'package:eye_care_for_all/apps/eyebank/features/doctor/adverse_reaction_report/presentation/widgets/recipient_information_section.dart';
import 'package:eye_care_for_all/apps/eyebank/features/doctor/post_acceptance_details/presentation/widget/post_acceptance_recipient_info_section.dart';
import 'package:eye_care_for_all/apps/eyebank/features/doctor/post_acceptance_details/presentation/widget/post_acceptance_surgery_information_section.dart';
import 'package:eye_care_for_all/apps/eyebank/features/doctor/post_acceptance_details/presentation/widget/post_acceptance_surgery_success_section.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PostAcceptanceDetailsPage extends HookWidget {
  const PostAcceptanceDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var isRecipientChanged = useState(false);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: AppSize.km),
            const PostAcceptanceSurgeryInformationSection(),
            const SizedBox(height: AppSize.km),
            !isRecipientChanged.value
                ? PostAcceptanceRecipientInfoSection(
                    onTap: () {
                      isRecipientChanged.value = true;
                    },
                  )
                : RecipientInformationSection(
                    onTap: () {
                      isRecipientChanged.value = false;
                    },
                  ),
            const SizedBox(height: AppSize.km),
            const PostAcceptanceSurgerySuccessSection()
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: Responsive.isMobile(context)
            ? const EdgeInsets.all(AppSize.km)
            : EdgeInsets.fromLTRB(AppSize.km, AppSize.km,
                AppSize.width(context) / 1.1, AppSize.km),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Submit'),
        ),
      ),
    );
  }
}
