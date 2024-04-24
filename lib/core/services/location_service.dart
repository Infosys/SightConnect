import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

class LocationService {
  static Future<bool> checkLocationPermission() async {
    final location = Location();
    final hasPermission = await location.hasPermission();
    logger.f('Location permission status: $hasPermission');
    if (hasPermission == PermissionStatus.granted ||
        hasPermission == PermissionStatus.grantedLimited) {
      return true;
    } else {
      return false;
    }
  }

  static Future<bool> requestLocationPermission(BuildContext context) async {
    final location = Location();
    bool result = false;
    if (context.mounted) {
      await showDialog(
          context: context,
          builder: (BuildContext context) {
            return BlurDialogBox(
              title: Center(
                child: Text(
                  'We Need your Permission to Access Location',
                  style: applyFiraSansFont(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              content: Text(
                'Location access is required to get information about your current location to prefill your address data, which will help us in recommending the closest vision center to you. Please enable location access in your device settings.',
                style:
                    applyRobotoFont(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    result = false;
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Deny',
                    style: applyRobotoFont(),
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    var permissionGiven = await location.requestPermission();
                    permissionGiven == PermissionStatus.granted ||
                            permissionGiven == PermissionStatus.grantedLimited
                        ? result = true
                        : result = false;
                    if (context.mounted) {
                      Navigator.of(context).pop();
                    }

                    logger.f("location service requested");
                  },
                  child: Text(
                    'Enable Location',
                    style: applyRobotoFont(),
                  ),
                ),
              ],
            );
          });
    }
    return result;
  }

  static Future<bool> enableLocation(BuildContext context) async {
    final location = Location();
    bool serviceEnabled = await location.serviceEnabled();
    logger.f('Location permission status: $serviceEnabled');
    if (!serviceEnabled) {
      logger.f("inside if service disabled");
      if (context.mounted) {
        await showDialog(
            context: context,
            builder: (BuildContext context) {
              return BlurDialogBox(
                title: Center(
                  child: Text(
                    'Please turn on GPS location',
                    style: applyFiraSansFont(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                content: Text(
                  'Click on the "Enable Location" button to turn on GPS location.',
                  style: applyRobotoFont(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      serviceEnabled = false;
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Deny',
                      style: applyRobotoFont(),
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      serviceEnabled = await location.requestService();
                      if (context.mounted) {
                        Navigator.of(context).pop();
                      }

                      logger.f("location service requested");
                    },
                    child: Text(
                      'Enable Location',
                      style: applyRobotoFont(),
                    ),
                  ),
                ],
              );
            });
      }
    }
    return serviceEnabled;
  }

  static Future<LocationData> getCoordinates() async {
    final location = Location();
    return await location.getLocation();
  }
}


//  final serviceEnabled = await location.serviceEnabled();
//     logger.f('Location permission status: $hasPermission');

//     if (hasPermission == PermissionStatus.granted ||
//         hasPermission == PermissionStatus.grantedLimited) {
//       logger.f("inisde if permission granted");
//       if (context.mounted) {
//         enableLocation(context);
//       }
//       return true;
//     } else if (hasPermission == PermissionStatus.denied) {
//       logger.f("inside if permission denied");
//       if (context.mounted) {
//         await showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return AlertDialog(
//               title: const Text('Permission Needed'),
//               content: const Text('Please give permission'),
//               actions: [
//                 TextButton(
//                   onPressed: () async {
//                     final result = await location.requestPermission();

//                     if (result == PermissionStatus.denied) {
//                       if (context.mounted) {
//                         Navigator.of(context).pop();
//                         showDialog(
//                           context: context,
//                           builder: (BuildContext context) {
//                             return AlertDialog(
//                               title: const Text('Permission Denied'),
//                               content: const Text('Location access denied.'),
//                               actions: [
//                                 TextButton(
//                                   onPressed: () {
//                                     Navigator.of(context).pop();
//                                   },
//                                   child: const Text('OK'),
//                                 ),
//                               ],
//                             );
//                           },
//                         );
//                       }
//                     } else if (PermissionStatus.granted == result ||
//                         PermissionStatus.grantedLimited == result) {
//                       if (context.mounted) {
//                         Navigator.of(context).pop();
//                         enableLocation(context);
//                       }
//                     }
//                   },
//                   child: const Text('OK'),
//                 ),
//               ],
//             );
//           },
//         );
//       }
//     }

//     if ((hasPermission == PermissionStatus.granted ||
//             hasPermission == PermissionStatus.grantedLimited) &&
//         serviceEnabled == true) {
//       return true;
//     }

//     return false;