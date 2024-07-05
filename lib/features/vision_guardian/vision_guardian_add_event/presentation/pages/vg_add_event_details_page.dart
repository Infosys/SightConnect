import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/services/geocoding_service.dart';
import 'package:eye_care_for_all/core/services/location_service.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_add_event_photo.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_address_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_bottom_navigation.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_datetime_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_form_helper_widgets.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/regex/regex.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VGAddEventDetailsPage extends ConsumerStatefulWidget {
  const VGAddEventDetailsPage({super.key});

  @override
  ConsumerState<VGAddEventDetailsPage> createState() =>
      _VGAddEventDetailsPageState();
}

class _VGAddEventDetailsPageState extends ConsumerState<VGAddEventDetailsPage>
    with WidgetsBindingObserver {
   String? pincode;

  @override
  void initState() {
    super.initState();
    getPinode();
  }

  void getPinode() async {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final locationData = await LocationService.getLocationWithPermissions();
      if (locationData != null) {
        pincode = await GeocodingService.getPincodeFromLocation();
        logger.f("Pincode : $pincode");
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    var data = ref.watch(addEventDetailsProvider);
    var formKey = data.formKey;
    final loc = context.loc!;
    return LoadingOverlay(
      progressMessage: loc.vgUploadingImageAddingEvent,
      isLoading: ref.watch(addEventDetailsProvider).isLoading,
      child: Scaffold(
        appBar: CustomAppbar(
          onBackPress: () {
            ref.watch(addEventDetailsProvider).resetFields();
          },
          title: Text(loc.vgAddEvent),
          centerTitle: false,
        ),
        bottomNavigationBar: const VisionGuardianEventBottomNavigationBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const VisionGuardianAddEventPhoto(),
                  const SizedBox(height: AppSize.kl),
                  Container(
                    padding: const EdgeInsets.all(AppSize.km),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      boxShadow: applyLightShadow(),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(AppSize.km - 5),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        customTextField(
                          context,
                          data.eventTitle,
                          loc.vgEventTitle,
                          validationFunction: (value) {
                            if (value?.trim().isEmpty ?? true) {
                              return loc.vtEnterSomeText;
                            }
                            if (!Regex.isValidTitle(value!)) {
                              return loc.vgShouldNotContainSpecialCharacter;
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: AppSize.km),
                        customTextField(context, data.eventDescription,
                            loc.vgEventDescription,
                            validationFunction: (value) {
                          if (value?.trim().isEmpty ?? true) {
                            return loc.vtEnterSomeText;
                          }
                          if (!Regex.isValidDescription(value!)) {
                            return loc.vgShouldNotContainSpecialCharacter;
                          }
                          return null;
                        }),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSize.km),
                  const VisionGuardianEventDateTimeCard(),
                  const SizedBox(height: AppSize.km),
                  VisionGuardianEventAddressCard( pincode: pincode),
                  const SizedBox(height: AppSize.km),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
