import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_page/presentation/providers/vision_technician_register_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_page/presentation/widgets/patient_info_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_page/presentation/widgets/register_patient_button.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_page/presentation/widgets/register_search_bar.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianRegisterPage extends HookConsumerWidget {
  const VisionTechnicianRegisterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    var query = useState<String>("");

    return Scaffold(
      appBar: CustomAppbar(
        centerTitle: false,
        title: Text(
          loc.vtRegisterPatient,
          style: applyFiraSansFont(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RegisterSearchBar(
              onSearched: (value) {
                query.value = value;
                logger.d("search by mobile ${query.value}");
              },
            ),
            const SizedBox(height: AppSize.klheight),
            ref.watch(vtRegisterProvider(query.value)).when(
              data: (data) {
                if (data.length == 0) return const RegisterPatientButton();

                return RegisterPatientInfoCard(
                  data: data,
                );
              },
              error: (e, s) {
                return const RegisterPatientButton();
              },
              loading: () {
                return const CircularProgressIndicator.adaptive();
              },
            ),
          ],
        ),
      ),
    );
  }
}
