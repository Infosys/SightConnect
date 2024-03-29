import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
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

class TenantsDisplayPage extends ConsumerStatefulWidget {
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
    final loc = context.loc!;
    final NearByVisionCenterState viewState =
        ref.watch(nearByVisionCenterProvider);

    return Scaffold(
      appBar: const CustomAppbar(
        title: Text('Tenants'),
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
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                } else if (viewState.errorMessage != null) {
                  return Container(
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
                    return Center(
                      child: Text(
                        loc.nearbyVisionCentersNotFound,
                        style: applyFiraSansFont(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  }
                  return const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    // child: Row(
                    //   children: [
                    //     ...viewState.visionCenters!
                    //         .map(
                    //           (e) => NearbyVisionCentersCard(data: e),
                    //         )
                    //         .toList()
                    //   ],
                    // ),
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
