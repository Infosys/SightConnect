import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/models/patient_response_model.dart';
import '../../core/providers/global_patient_provider.dart';
import '../../core/services/geocoding_service.dart';
import '../../core/services/location_service.dart';
import '../../features/common_features/initialization/pages/patient_registeration_miniapp_page.dart';
import '../../main.dart';
import '../theme/text_theme.dart';

class PincodeDialogPage extends HookConsumerWidget {
  const PincodeDialogPage({super.key, required this.data});

  final PatientResponseModel data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isLoading = useState<bool>(false);
    final loc = context.loc!;
    return isLoading.value
        ? const Scaffold(
            body: Center(child: CircularProgressIndicator.adaptive()))
        : Scaffold(
            body: Card(
              elevation: 2,
              child: Center(
                child: AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    title: Center(
                      child: Text(
                        'Please Provide your pincode',
                        style: applyFiraSansFont(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    content: Text(
                      'We need your pincode so that we can accurately suggest you the nearest vision center. Please provide your pincode by clicking on the Proceed Button. \nYou can also enable your location to automatically fetch your pincode.',
                      style: applyRobotoFont(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    actions: [
                      TextButton(
                          onPressed: () async {
                            isLoading.value = true;
                            int selectedPatientId =
                                data.profile!.patient!.patientId!;

                            String? pinCode;

                            await LocationService.getLocationWithPermissions();

                            List<String> addressData =
                                await GeocodingService.getPincodeFromLocation();
                            pinCode = addressData[0];
                            logger.f("pinCode is  $pinCode");

                            if (context.mounted) {
                              await Navigator.of(context)
                                  .push<bool?>(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PatientRegistrationMiniappPage(
                                    actionType: MiniAppActionType.UPDATE,
                                    displayName: loc.patientUpdateProfile,
                                    parentPatientId:
                                        selectedPatientId.toString(),
                                    pinCode: pinCode,
                                  ),
                                ),
                              )
                                  .then((value) {
                                logger
                                    .d({"Profile Page Update Miniapp": value});

                                isLoading.value = false;

                                if (value == null || value == false) {
                                  Fluttertoast.showToast(
                                      msg: loc.patientProfileNotUpdated);
                                } else if (value) {
                                  Fluttertoast.showToast(
                                      msg: loc.patientProfileUpdated);

                                  ref.invalidate(getPatientProfileProvider);

                                  ref.invalidate(getPatientProfileByIdProvider(
                                      selectedPatientId));
                                }
                              });
                            }
                          },
                          child: const Text("Proceed")),

                      // TextButton(
                      //     onPressed: () async {
                      //       isLoading.value = true;
                      //       int selectedPatientId =
                      //           data.profile!.patient!.patientId!;

                      //       String? pinCode;
                      //       var locationData = await LocationService
                      //           .getLocationWithPermissions();

                      //       pinCode =
                      //           await GeocodingService.getPincodeFromLocation();
                      //       logger.d("pinCode is  $pinCode");

                      //       logger.d("pincode is : $pinCode");

                      //       if (context.mounted) {
                      //         await Navigator.of(context)
                      //             .push<bool?>(
                      //           MaterialPageRoute(
                      //             builder: (context) =>
                      //                 PatientRegistrationMiniappPage(
                      //               actionType: MiniAppActionType.UPDATE,
                      //               displayName: loc.patientUpdateProfile,
                      //               parentPatientId:
                      //                   selectedPatientId.toString(),
                      //               pinCode: pinCode,
                      //             ),
                      //           ),
                      //         )
                      //             .then((value) {
                      //           logger
                      //               .d({"Profile Page Update Miniapp": value});

                      //           if (value == null || value == false) {
                      //             Fluttertoast.showToast(
                      //                 msg: loc.patientProfileNotUpdated);
                      //           } else if (value) {
                      //             Fluttertoast.showToast(
                      //                 msg: loc.patientProfileUpdated);

                      //             ref.invalidate(getPatientProfileProvider);

                      //             ref.invalidate(getPatientProfileByIdProvider(
                      //                 selectedPatientId));
                      //           }
                      //         });
                      //       }
                      //     },
                      //     child: const Text("Enable Location and Proceed")),
                    ]),
              ),
            ),
          );
  }
}
