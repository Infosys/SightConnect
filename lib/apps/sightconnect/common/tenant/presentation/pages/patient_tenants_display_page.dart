import 'package:eye_care_for_all/apps/sightconnect/common/tenant/presentation/widgets/vc_list_tile.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/tenant/presentation/widgets/vc_radio_button.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_tenant_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart' as location;
import 'package:permission_handler/permission_handler.dart' as handler;

import '../../../../../../shared/constants/app_color.dart';
import '../../../../../../shared/constants/app_size.dart';
import '../../../../../../shared/theme/text_theme.dart';
import '../../../../features/patient/patient_home/presentation/modals/NearByVisionCenterState.dart';
import '../../../../features/patient/patient_home/presentation/providers/near_by_vision_center_provider.dart';

class PatientTenantsDisplayPage extends StatefulHookConsumerWidget {
  const PatientTenantsDisplayPage({super.key});

  @override
  ConsumerState<PatientTenantsDisplayPage> createState() =>
      _TenantDisplayPageState();
}

class _TenantDisplayPageState extends ConsumerState<PatientTenantsDisplayPage>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(nearByVisionCenterProvider.notifier).init();
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        if (ref.read(nearByVisionCenterProvider).shouldForceReload) {
          ref.read(nearByVisionCenterProvider.notifier).reload();
          break;
        }
      case AppLifecycleState.paused:
        if (ref.read(nearByVisionCenterProvider).permissionStatus !=
            location.PermissionStatus.granted) {
          ref.read(nearByVisionCenterProvider.notifier).enableForceReload();
        }
        break;
      default:
        break;
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var selectedTenants = useState<int>(-1);
    final loc = context.loc!;
    final NearByVisionCenterState viewState =
        ref.watch(nearByVisionCenterProvider);
    final model = ref.watch(globalTenantProvider);
    final tenantId = model.tenantId;
    final organizationId = model.organizationId;

    return Scaffold(
      appBar: CustomAppbar(
        title: Text(loc.patientTenantDisplayPageHeader),
        onBackPress: () {},
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.km),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    loc.patientTenantDisplayPageBody,
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
            Builder(
              builder: (context) {
                if (viewState.isLoading) {
                  return SizedBox(
                    height: AppSize.height(context) * 0.6,
                    child: const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  );
                } else if (viewState.errorMessage != null) {
                  return Container(
                    height: AppSize.height(context) * 0.6,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColor.lightGrey,
                      ),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/location_empty_state.svg",
                          height: 62,
                          width: 50,
                        ),
                        const SizedBox(height: AppSize.ks),
                        Text(
                          viewState.errorMessage ?? '',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                        const SizedBox(height: AppSize.ks),
                        TextButton(
                          onPressed: () async {
                            final status = viewState.permissionStatus;
                            final model =
                                ref.read(nearByVisionCenterProvider.notifier);
                            if (status ==
                                location.PermissionStatus.deniedForever) {
                              if (await handler.openAppSettings()) {
                                model.init();
                              }
                            } else {
                              model.init();
                            }
                          },
                          child: Text(loc
                              .patientTenantDisplayPageRequestLocationPermissionButton),
                        ),
                      ],
                    ),
                  );
                } else if (viewState.visionCenters != null) {
                  if (viewState.visionCenters?.isEmpty == true) {
                    return SizedBox(
                      height: AppSize.height(context) * 0.6,
                      child: Center(
                        child: Text(
                          loc.nearbyVisionCentersNotFound,
                          style: applyFiraSansFont(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    );
                  }

                  return Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(0),
                      itemCount: viewState.visionCenters?.length,
                      itemBuilder: (context, index) {
                        var isSelectedVc = selectedTenants.value == index;
                        if (organizationId != null && tenantId != null) {
                          if (organizationId ==
                                  viewState.visionCenters![index].id &&
                              tenantId ==
                                  viewState.visionCenters![index].tenant?.id) {
                            isSelectedVc = true;
                          }
                        }

                        final vcName = viewState.visionCenters?[index]
                                .facilityInformation?.facilityName ??
                            "";
                        final vcAddress =
                            "${viewState.visionCenters?[index].facilityInformation?.facilityAddressDetails?.addressLine1 ?? ""},${viewState.visionCenters?[index].facilityInformation?.facilityAddressDetails?.addressLine2 ?? ""}";
                        final vcContact = viewState
                                .visionCenters?[index]
                                .facilityInformation
                                ?.facilityContactInformation
                                ?.facilityContactNumber ??
                            "-";
                        final vcEmail = viewState
                                .visionCenters?[index]
                                .facilityInformation
                                ?.facilityContactInformation
                                ?.facilityEmailId ??
                            "-";
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
                                          .setOrganizationId(viewState
                                              .visionCenters![index].id!);
                                      ref
                                          .read(globalTenantProvider)
                                          .setTenantId(viewState
                                              .visionCenters![index]
                                              .tenant
                                              ?.id);
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
                                      title: vcName,
                                      style: applyFiraSansFont(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    VCListTile(
                                      title: vcAddress,
                                      icon: Icons.location_on_outlined,
                                      style: applyFiraSansFont(
                                        fontSize: 12,
                                        color: AppColor.darkGrey,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    VCListTile(
                                      title: vcContact,
                                      icon: Icons.call_outlined,
                                      style: applyFiraSansFont(
                                        fontSize: 12,
                                        color: AppColor.darkGrey,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    VCListTile(
                                      title: vcEmail,
                                      icon: Icons.email_outlined,
                                      style: applyFiraSansFont(
                                        fontSize: 12,
                                        color: AppColor.darkGrey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                } else {
                  return const SizedBox();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
