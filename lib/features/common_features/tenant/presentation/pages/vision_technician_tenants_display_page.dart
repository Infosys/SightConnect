import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/data/models/vg_profile_model.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';
import '../../../../../core/providers/global_tenant_provider.dart';
import '../../../../../core/providers/global_vt_provider.dart';
import '../../../../../shared/theme/app_shadow.dart';
import '../../../../../shared/theme/text_theme.dart';
import '../../../../../shared/widgets/custom_app_bar.dart';
import '../widgets/vc_list_tile.dart';
import '../widgets/vc_radio_button.dart';

class VisionTechnicianTenantsDisplayPage extends HookConsumerWidget {
  const VisionTechnicianTenantsDisplayPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedTenants = useState<int>(-1);
    final model = ref.watch(globalTenantProvider);
    final vtTenantId = model.tenantIdVt;
    final vtOrganizationId = model.organizationIdVt;
    final loc = context.loc!;
    return Scaffold(
      appBar: CustomAppbar(
        title: const Text('Tenants'),
        onBackPress: () {},
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.km),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  "Select a Vision Center from the list",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: applyFiraSansFont(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: AppSize.km,
          ),
          ref.watch(getVTProfileProvider).when(
                data: (data) {
                  final vtProfile = data;
                  final filteredGrants = vtProfile.practiceGrants!
                      .where((grant) =>
                          grant.grantRole == "ROLE_VISION_TECHNICIAN")
                      .toList();
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: filteredGrants.length,
                    itemBuilder: (context, index) {
                      var isSelectedVc = selectedTenants.value == index;
                      if (vtOrganizationId != null && vtTenantId != null) {
                        if (vtOrganizationId ==
                                filteredGrants[index].organization!.id! &&
                            vtTenantId ==
                                filteredGrants[index]
                                    .organization!
                                    .tenant!
                                    .id!) {
                          isSelectedVc = true;
                        }
                      }
                      final name =
                          filteredGrants[index].organization!.tenant!.name!;
                      final organizationId =
                          filteredGrants[index].organization!.id!;
                      final tenantId =
                          filteredGrants[index].organization!.tenant!.id!;

                      return Container(
                        margin: const EdgeInsets.only(bottom: AppSize.km),
                        padding: const EdgeInsets.all(AppSize.ks),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.white,
                          boxShadow: applycustomShadow(),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: VCRadioButton(
                                isSelected: isSelectedVc,
                                onTap: () {
                                  if (!isSelectedVc) {
                                    selectedTenants.value = index;
                                    ref
                                        .read(globalTenantProvider)
                                        .setOrganizationIdVt(organizationId);
                                    ref
                                        .read(globalTenantProvider)
                                        .setTenantIdVt(tenantId);
                                  } else {
                                    selectedTenants.value = -1;
                                  }
                                },
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  VCListTile(
                                    title: name,
                                    style: applyFiraSansFont(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  VCListTile(
                                    title: organizationId.toString(),
                                    icon: Icons.location_on_outlined,
                                    style: applyFiraSansFont(
                                      fontSize: 12,
                                      color: AppColor.darkGrey,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  VCListTile(
                                    title: tenantId.toString(),
                                    icon: Icons.call_outlined,
                                    style: applyFiraSansFont(
                                      fontSize: 12,
                                      color: AppColor.darkGrey,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stackTrace) => Center(
                  child: Text(
                    'Error: $error',
                    style: applyFiraSansFont(
                      fontSize: 16,
                      color: AppColor.red,
                    ),
                  ),
                ),
              ),
        ]),
      ),
    );
  }
}
 