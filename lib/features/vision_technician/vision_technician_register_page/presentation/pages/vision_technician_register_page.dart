import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_page/presentation/providers/vision_technician_register_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_page/presentation/widgets/vision_technician_patient_list.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_page/presentation/widgets/register_patient_button.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_page/presentation/widgets/register_search_bar.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/regex/regex.dart';
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
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RegisterSearchBar(
            regex: Regex.mobileRegExp,
            onSearched: (value) {
              query.value = value;
            },
          ),
          () {
            if (query.value.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "You can search patient by mobile number",
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Expanded(
                child: ref.watch(vtRegisterProvider(query.value)).when(
                  data: (data) {
                    if (query.value.isEmpty) {
                      return const SizedBox();
                    } else if (data.isEmpty) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const RegisterPatientButton(),
                            const SizedBox(height: AppSize.kl),
                            Text(
                              loc.vtNoPatientFound,
                              style: applyFiraSansFont(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return VisionTechnicianPatientListWidget(response: data);
                    }
                  },
                  error: (e, s) {
                    return const Center(
                      child: RegisterPatientButton(),
                    );
                  },
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  },
                ),
              );
            }
          }(),
        ],
      ),
    );
  }
}
