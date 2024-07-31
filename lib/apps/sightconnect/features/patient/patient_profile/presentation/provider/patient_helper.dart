import 'package:eye_care_for_all/apps/sightconnect/core/models/patient_response_model.dart';

class PatientHelper {
  PatientHelper._();

  static String pincode(List<AddressModel>? address) {
    if (address == null || address.isEmpty) {
      return "-";
    } else {
      return _getPrimaryAddress(address).pincode ?? "-";
    }
  }

  static String state(List<AddressModel>? address) {
    if (address == null || address.isEmpty) {
      return "-";
    } else {
      return _getPrimaryAddress(address).state ?? "-";
    }
  }

  static String district(List<AddressModel>? address) {
    if (address == null || address.isEmpty) {
      return "-";
    } else {
      return _getPrimaryAddress(address).district ?? "-";
    }
  }

  static String city(List<AddressModel>? address) {
    if (address == null || address.isEmpty) {
      return "-";
    } else {
      return _getPrimaryAddress(address).town ?? "-";
    }
  }

  static String street(List<AddressModel>? address) {
    if (address == null || address.isEmpty) {
      return "-";
    } else {
      return _getPrimaryAddress(address).line == null
          ? "-"
          : _getAddressFromLine(_getPrimaryAddress(address).line!);
    }
  }

  static AddressModel _getPrimaryAddress(List<AddressModel> address) {
    return address.firstWhere((element) => element.isPrimary!);
  }

  static String _getAddressFromLine(String line) {
    List<String> addressList = line.split(";");
    List<String> filteredAddressList =
        addressList.where((element) => element.isNotEmpty).toList();
    return filteredAddressList.join(", ");
  }
}
