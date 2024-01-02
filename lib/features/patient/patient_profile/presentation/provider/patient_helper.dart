import 'package:eye_care_for_all/core/models/patient_response_model.dart';

class PatientHelper {
  PatientHelper._();

  static String pincode(List<AddressModel>? address) {
    if (address == null || address.isEmpty) {
      return "-";
    } else {
      return address.last.pincode ?? "-";
    }
  }

  static String state(List<AddressModel>? address) {
    if (address == null || address.isEmpty) {
      return "-";
    } else {
      return address.first.state ?? "-";
    }
  }

  static String district(List<AddressModel>? address) {
    if (address == null || address.isEmpty) {
      return "-";
    } else {
      return address.last.district ?? "-";
    }
  }

  static String city(List<AddressModel>? address) {
    if (address == null || address.isEmpty) {
      return "-";
    } else {
      return address.last.town ?? "-";
    }
  }

  static String street(List<AddressModel>? address) {
    if (address == null || address.isEmpty) {
      return "-";
    } else {
      return address.last.line ?? "-";
    }
  }
}
