import 'package:location/location.dart';

class LocationService {
  Location location = Location();

  static Future<LocationData?> getLocationWithPermissions() async {
    Location location = Location();
    bool serviceEnabled;
    PermissionStatus permissionGranted;
    LocationData locationData;

    // Check if location services are enabled
    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return null; // Or handle the case where service cannot be enabled
      }
    }

    // Request location permission
    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return null; // Or handle the case where permission is not granted
      }
    }

    // Get the location data
    locationData = await location.getLocation();
    return locationData;
  }

  static Future<LocationData> getCoordinates() async {
    final location = Location();
    return await location.getLocation();
  }
}


//  final serviceEnabled = await location.serviceEnabled();
//     logger.d('Location permission status: $hasPermission');

//     if (hasPermission == PermissionStatus.granted ||
//         hasPermission == PermissionStatus.grantedLimited) {
//       logger.d("inisde if permission granted");
//       if (context.mounted) {
//         enableLocation(context);
//       }
//       return true;
//     } else if (hasPermission == PermissionStatus.denied) {
//       logger.d("inside if permission denied");
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