import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ipledgeProvider = ChangeNotifierProvider.autoDispose(
  (ref) => IpledgeProvider(),
);

class IpledgeProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final fullName = TextEditingController();
  final dob = TextEditingController();
  final mobile = TextEditingController();
  final gender = TextEditingController();
  final email = TextEditingController();

  final kinName = TextEditingController();
  final kinMobile = TextEditingController();
  final kinRelationship = TextEditingController();

  final address = TextEditingController();
  final state = TextEditingController();
  final pincode = TextEditingController();
  final localityAndTown = TextEditingController();
  final cityAndDistrict = TextEditingController();

  bool isLoading = false;

  bool isIAgreeAndAccepted = false;

  IpledgeProvider();

  void setIAgreeAndAccepted(bool value) {
    isIAgreeAndAccepted = value;
    notifyListeners();
  }

  Future<void> submitPledge() async {
    isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(milliseconds: 500));
    logger.i({
      "fullName": fullName.text,
      "dob": dob.text,
      "mobile": mobile.text,
      "email": email.text,
      "kinName": kinName.text,
      "kinMobile": kinMobile.text,
      "kinRelationship": kinRelationship.text,
      "Address": address.text,
      "state": state.text,
      "pincode": pincode.text,
      "localityAndTown": localityAndTown.text,
      "cityAndDistrict": cityAndDistrict.text,
    });
    isLoading = false;
    notifyListeners();
  }
}
