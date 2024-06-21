import 'package:eye_care_for_all/core/services/location_service.dart';
import 'package:geocoding/geocoding.dart';
import 'package:location/location.dart';

import '../../main.dart';

class GeocodingService {
  static Future<String> getPincodeFromLocation() async {
    final LocationData locationData = await LocationService.getCoordinates();
    final placemarks = await placemarkFromCoordinates(
        locationData.latitude!, locationData.longitude!);
    logger.d("placemarks : $placemarks");

    return placemarks.first.postalCode ?? "";
  }

  static Future<Map<String, String>> getCoordinatesFromPincode(String pincode) {
    return locationFromAddress(pincode).then((value) {
      if (value.isNotEmpty) {
        return {
          "latitude": value.first.latitude.toString(),
          "longitude": value.first.longitude.toString()
        };
      }
      return {"latitude": "", "longitude": ""};
    });
  }
}
