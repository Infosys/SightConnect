import 'package:eye_care_for_all/apps/sightconnect/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_profile/presentation/widgets/patient_profile_layout.dart';
import 'package:eye_care_for_all/shared/constants/app_images.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientProfilePage extends ConsumerWidget {
  const PatientProfilePage({
    this.id,
    super.key,
  });
  final int? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(),
        title: Text(
          loc.profileTitle,
          style: applyFiraSansFont(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        height: AppSize.height(context),
        width: AppSize.width(context),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppImages.scaffoldBg,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: ref.watch(getPatientProfileProvider).when(
          data: (data) {
            return PatientProfileLayout(
              patient: data,
              id: id,
            );
          },
          error: (e, s) {
            return Center(
              child: Text(
                loc.somethingWentWrong,
                style: applyFiraSansFont(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            );
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          },
        ),
      ),
    );
  }
}
