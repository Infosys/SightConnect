import 'package:eye_care_for_all/core/providers/global_tenant_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart' as location;
import 'package:permission_handler/permission_handler.dart' as handler;

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';
import '../../../../../shared/theme/text_theme.dart';
import '../../../../patient/patient_home/presentation/modals/NearByVisionCenterState.dart';
import '../../../../patient/patient_home/presentation/providers/near_by_vision_center_provider.dart';

class TenantsDisplayPage extends StatefulHookConsumerWidget {
  const TenantsDisplayPage({super.key});

  @override
  ConsumerState<TenantsDisplayPage> createState() => _TenantDisplayPageState();
}

class _TenantDisplayPageState extends ConsumerState<TenantsDisplayPage>
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
    var model = ref.read(globalTenantProvider);

    return Scaffold(
      appBar: CustomAppbar(
        title: const Text('Tenants'),
        onBackPress: () {
       
        },
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
                          child: const Text("Request Location Permission"),
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
                        if (model.organizationId != null &&
                            model.tenantId != null) {
                          if (model.organizationId ==
                                  viewState.visionCenters![index].id &&
                              model.tenantId ==
                                  viewState
                                      .visionCenters![index].tenant?.id) {
                            isSelectedVc = true;
                          }
                        }
                        
    
                        final vcName = viewState.visionCenters![index]
                                .facilityInformation?.facilityName ??
                            "";
                        final vcAddress = viewState
                                .visionCenters![index]
                                .facilityInformation
                                ?.facilityAddressDetails
                                ?.addressLine1 ??
                            "";
                        final vcContact = viewState
                                .visionCenters![index]
                                .facilityInformation
                                ?.facilityContactInformation
                                ?.facilityContactNumber ??
                            "";
                        return Container(
                          margin: const EdgeInsets.only(bottom: AppSize.km),
                          padding: const EdgeInsets.all(AppSize.km),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.white,
                            boxShadow: applycustomShadow(),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  _VCCheckBox(
                                    isSelectedVc: isSelectedVc,
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
                                  SizedBox(
                                    width: AppSize.width(context) * 0.05,
                                  ),
                                  Flexible(
                                    child: Text(
                                      vcName,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: applyFiraSansFont(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.start,
                              //   crossAxisAlignment: CrossAxisAlignment.center,
                              //   children: [
    
                              //   ],
                              // ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: AppSize.width(context) * 0.1,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Contact: $vcContact",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: applyRobotoFont(fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: AppSize.width(context) * 0.1,
                                  ),
                                  Flexible(
                                    child: Text(
                                      vcAddress,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: applyRobotoFont(fontSize: 14),
                                    ),
                                  ),
                                ],
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

class _VCCheckBox extends StatelessWidget {
  const _VCCheckBox({
    required this.isSelectedVc,
    this.onTap,
  });
  final bool isSelectedVc;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelectedVc ? AppColor.primary : AppColor.white,
          border: Border.all(
            color: isSelectedVc ? AppColor.primary : AppColor.grey,
            width: 2,
          ),
        ),
        child: Center(
          child: isSelectedVc
              ? const Icon(
                  Icons.check,
                  color: AppColor.white,
                  size: 16,
                  weight: 10,
                )
              : const SizedBox(),
        ),
      ),
    );
  }
}
