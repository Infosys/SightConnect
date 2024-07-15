import 'package:eye_care_for_all/core/services/location_service.dart';
import 'package:geocoding/geocoding.dart';
import 'package:location/location.dart';

import '../../main.dart';

class GeocodingService {
  static Future<List<String>> getPincodeFromLocation({requiresAddress = false}) async {
    List<String> data = [];
    final LocationData locationData = await LocationService.getCoordinates();
    final placemarks = await placemarkFromCoordinates(
        locationData.latitude!, locationData.longitude!);
    logger.d("placemarks : $placemarks");

      //add placemarks.first.postalCode ?? ""; at 0 index of data
   if(!requiresAddress){ data.add(placemarks.first.postalCode ?? "");}
   else{
    data.add(placemarks.first.postalCode ?? "");
    data.add(placemarks.first.subAdministrativeArea ?? "");
   }
    return data;
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
