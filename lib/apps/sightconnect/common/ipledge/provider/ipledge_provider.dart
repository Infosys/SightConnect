import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ipledgeProvider = ChangeNotifierProvider.autoDispose(
  (ref) => IpledgeProvider(ref.watch(globalPatientProvider)),
);

class IpledgeProvider extends ChangeNotifier {
  final GlobalPatientProvider globalPatientProvider;
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

  IpledgeProvider(this.globalPatientProvider) {
    fullName.text =
        globalPatientProvider.activeUser?.profile?.patient?.name ?? "";
    dob.text =
        globalPatientProvider.activeUser?.profile?.patient?.dayOfBirth ?? "";
    mobile.text =
        globalPatientProvider.activeUser?.profile?.patient?.phoneNumber ?? "";
    gender.text =
        globalPatientProvider.activeUser?.profile?.patient?.gender?.name ?? "";
    email.text =
        globalPatientProvider.activeUser?.profile?.patient?.email ?? "";
  }

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

  @override
  void dispose() {
    fullName.dispose();
    dob.dispose();
    mobile.dispose();
    gender.dispose();
    email.dispose();
    kinName.dispose();
    kinMobile.dispose();
    kinRelationship.dispose();
    address.dispose();
    state.dispose();
    pincode.dispose();
    localityAndTown.dispose();
    cityAndDistrict.dispose();

    super.dispose();
  }
}
