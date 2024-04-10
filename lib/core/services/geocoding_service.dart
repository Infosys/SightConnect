import 'package:eye_care_for_all/core/services/location_service.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:location/location.dart';

import '../../main.dart';

class GeocodingService {
  static Future<String> getPincodeFromLocation(BuildContext context) async {
    final isLocationEnabled =
        await LocationService.checkLocationPermission(context);
    if (isLocationEnabled) {
      final LocationData locationData = await LocationService.getCoordinates();
      final placemarks = await placemarkFromCoordinates(
          locationData.latitude!, locationData.longitude!);
      logger.f("placemarks : $placemarks");

      return placemarks.first.postalCode ?? "";
    } else {
      return "";
    }
  }

  static Future<Map<String, String>> getCoordinatesFromPincode(String pincode){
    return locationFromAddress(pincode).then((value) {
      if(value.isNotEmpty){
        return {
          "latitude": value.first.latitude.toString(),
          "longitude": value.first.longitude.toString()
        };
      }
      return {
        "latitude": "",
        "longitude": ""
      };
    });
  }
}
