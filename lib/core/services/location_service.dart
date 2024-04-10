import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

class LocationService {
  static Future<bool> checkLocationPermission(BuildContext context) async {
    final location = Location();
    final hasPermission = await location.requestPermission();
    final serviceEnabled = await location.serviceEnabled();
    logger.f('Location permission status: $hasPermission');

    if (hasPermission == PermissionStatus.granted ||
        hasPermission == PermissionStatus.grantedLimited) {
      if (context.mounted) {
        enableLocation(context);
      }
      return true;
    } else if (hasPermission == PermissionStatus.denied) {
      if (context.mounted) {
        await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Location Access'),
              content: const Text('Please grant location access to continue.'),
              actions: [
                TextButton(
                  onPressed: () async {
                    final result = await location.requestPermission();

                    if (result == PermissionStatus.denied) {
                      if (context.mounted) {
                        Navigator.of(context).pop();
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Location Access'),
                              content: const Text('Location access denied.'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    } else if (PermissionStatus.granted == result ||
                        PermissionStatus.grantedLimited == result) {
                      if (context.mounted) {
                        Navigator.of(context).pop();
                        enableLocation(context);
                      }
                    }
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      }
    }

    if (hasPermission == PermissionStatus.granted ||
        hasPermission == PermissionStatus.grantedLimited &&
            serviceEnabled == true) {
      return true;
    }

    return false;
  }

  static enableLocation(BuildContext context) async {
    final location = Location();
    final serviceEnabled = await location.serviceEnabled();
    logger.f('Location permission status: $serviceEnabled');
    if (serviceEnabled) {
      return true;
    } else if (!serviceEnabled) {
      if (context.mounted) {
        await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Location Access'),
              content: const Text('Please grant location access to continue.'),
              actions: [
                TextButton(
                  onPressed: () async {
                     Navigator.of(context).pop();
                    final result = await location.requestService();

                    if (result == false) {
                      if (context.mounted) {
                        // Navigator.of(context).pop();
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Location Access'),
                              content: const Text('Location access denied.'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    } 
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      }
    }
  }

  static Future<LocationData> getCoordinates() async {
    final location = Location();  
    return await location.getLocation();
  }

}
