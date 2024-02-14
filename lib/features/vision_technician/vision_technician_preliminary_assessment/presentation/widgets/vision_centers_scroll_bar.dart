import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/modals/NearByVisionCenterState.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/providers/near_by_vision_center_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:location/location.dart' as location;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

class VisionCentersScrollBar extends ConsumerStatefulWidget {
  const VisionCentersScrollBar({super.key});

  @override
  ConsumerState<VisionCentersScrollBar> createState() =>
      _VisionCentersScrollBarState();
}

class _VisionCentersScrollBarState extends ConsumerState<VisionCentersScrollBar>
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
    final firstcontroller = ScrollController();
    final NearByVisionCenterState viewState =
        ref.watch(nearByVisionCenterProvider);

    if (viewState.isLoading) const Center(child: CircularProgressIndicator());

    if (viewState.errorMessage != null) {
      return VisionCenterError(
        viewState: viewState,
        ref: ref,
      );
    }

    if (viewState.visionCenters == null){
      return const Text("No Vision Centers Found");
    }

    return Container(
      width: Responsive.isMobile(context)
          ? AppSize.width(context)
          : AppSize.width(context) / 2,
      height: Responsive.isMobile(context)
          ? AppSize.height(context) / 5
          : Responsive.isTablet(context)
              ? AppSize.height(context) / 4
              : AppSize.height(context) / 2.5,
      padding: const EdgeInsets.all(AppSize.kspadding + 2),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.lightGrey),
        borderRadius: BorderRadius.circular(AppSize.kmradius),
      ),
      child: Scrollbar(
        thumbVisibility: true,
        controller: firstcontroller,
        child: ListView.builder(
          shrinkWrap: true,
          controller: firstcontroller,
          itemCount: viewState.visionCenters!.length,
          itemBuilder: (BuildContext context, int index) {
            final data = viewState.visionCenters!;
            final isSelected = ref
                .watch(preliminaryAssessmentHelperProvider)
                .isSelectVisionCenter(data[index]);

            return Padding(
              padding: const EdgeInsets.all(AppSize.kspadding),
              child: InkWell(
                onTap: () {
                  logger.d("selected vision center ${data[index]}");

                  ref
                      .read(preliminaryAssessmentHelperProvider)
                      .setSelectedVisionCenter(data[index]);
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: isSelected ? AppColor.green : AppColor.blue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(AppSize.ksradius),
                  ),
                  padding: const EdgeInsets.all(AppSize.kspadding + 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data[index].facilityInformation?.facilityName ?? "",
                        style: applyRobotoFont(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        Icons.check_circle,
                        size: 20,
                        color: isSelected ? AppColor.green : AppColor.grey,
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class VisionCenterError extends StatelessWidget {
  const VisionCenterError({
    super.key,
    required this.viewState,
    this.ref,
  });
  final NearByVisionCenterState viewState;
  final ref;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          "assets/icons/location_empty_state.svg",
          height: 32,
          width: 32,
        ),
        const SizedBox(height: AppSize.ksheight),
        AutoSizeText(
          viewState.errorMessage.toString().replaceAll("Exception: ", ""),
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
        Builder(builder: (context) {
          if (viewState.permissionStatus == location.PermissionStatus.denied) {
            return Flexible(
              child: TextButton(
                onPressed: () {
                  ref.read(nearByVisionCenterProvider.notifier).init();
                },
                child: const Text("Request Location Permission"),
              ),
            );
          } else if (viewState.permissionStatus ==
              location.PermissionStatus.deniedForever) {
            return Flexible(
              child: TextButton(
                onPressed: () {
                  openAppSettings();
                },
                child: const Text("App Settings"),
              ),
            );
          }

          return const SizedBox();
        }),
      ],
    );
  }
}
