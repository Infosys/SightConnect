import 'package:eye_care_for_all/apps/sightconnect/common/ipledge/data/models/ipledge_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/ipledge/data/repository/ipledge_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ipledgeProvider = ChangeNotifierProvider.autoDispose(
  (ref) => IpledgeProvider(
      ref.watch(globalPatientProvider), ref.watch(iPledgeRepositoryProvider)),
);

class IpledgeProvider extends ChangeNotifier {
  final GlobalPatientProvider globalPatientProvider;
  final IPledgeRepository _iPledgeRepository;
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
  final additionalInfo = TextEditingController();

  bool isLoading = false;

  bool isIAgreeAndAccepted = false;
  bool isPledgingDone = false;
  DateTime? pledgeDate;

  IpledgeProvider(this.globalPatientProvider, this._iPledgeRepository) {
    fullName.text =
        globalPatientProvider.activeUser?.profile?.patient?.name ?? "";
    dob.text = _getPatientDOB() ?? "";
    mobile.text =
        globalPatientProvider.activeUser?.profile?.patient?.phoneNumber ?? "";
    gender.text =
        globalPatientProvider.activeUser?.profile?.patient?.gender?.name ?? "";
    email.text =
        globalPatientProvider.activeUser?.profile?.patient?.email ?? "";
    address.text = globalPatientProvider
            .activeUser?.profile?.patient?.address?.first.line
            ?.trim()
            .replaceAll(';', ' ') ??
        "";
    state.text = globalPatientProvider
            .activeUser?.profile?.patient?.address?.first.state ??
        "";

    _prefillAddress();
    _getPledgeInfo();
  }

  String? _getPatientDOB() {
    try {
      final dob = DateTime(
              int.parse(globalPatientProvider
                      .activeUser?.profile?.patient?.yearOfBirth ??
                  ""),
              int.parse(globalPatientProvider
                      .activeUser?.profile?.patient?.monthOfBirth ??
                  ""),
              int.parse(globalPatientProvider
                      .activeUser?.profile?.patient?.dayOfBirth ??
                  ""))
          .formateDate;
      return dob;
    } catch (e) {
      logger.e({"Ipledge Provider": e});
      return null;
    }
  }

  void _prefillAddress() {
    final address = globalPatientProvider.activeUser?.profile?.patient?.address;
    if (address != null && address.isNotEmpty) {
      state.text = address.first.state ?? "";
      pincode.text = address.first.pincode ?? "";
      localityAndTown.text = address.first.district ?? "";
      cityAndDistrict.text = address.first.state ?? "";
    }
  }

  void setIAgreeAndAccepted(bool value) {
    isIAgreeAndAccepted = value;
    notifyListeners();
  }

  Future<void> _getPledgeInfo() async {
    int? patientId =
        globalPatientProvider.activeUser?.profile?.patient?.patientId;
    if (patientId == null) {
      return;
    }
    isLoading = true;
    notifyListeners();
    final response = await _iPledgeRepository.getIPledgeData(patientId);
    return response.fold(
      (l) {
        logger.e({"Ipledge Provider": l.errorMessage});
        isLoading = false;
        notifyListeners();
        throw l;
      },
      (r) {
        isLoading = false;
        if (r.isNotEmpty) {
          isPledgingDone = true;
          final data = r.first;
          kinName.text = data.kinName ?? "";
          kinMobile.text = data.kinContact ?? "";
          kinRelationship.text = data.kinRelation ?? "";
          kinRelationship.text = data.kinRelation ?? "";
          additionalInfo.text = data.additionalInfo ?? "";
          pledgeDate = data.pledgeDate;
        }
        notifyListeners();
      },
    );
  }

  Future<void> submitPledge() async {
    isLoading = true;
    notifyListeners();
    final requestData = IPledgeModel(
      kinName: kinName.text,
      kinContact: kinMobile.text,
      kinRelation: kinRelationship.text,
      pledgeType: "EYE_DONATION",
      additionalInfo: additionalInfo.text,
      patientId: globalPatientProvider.activeUser?.profile?.patient?.patientId,
    );

    final response = await _iPledgeRepository.saveIPledgeData(requestData);
    return response.fold(
      (l) {
        logger.e({"Ipledge Provider": l.errorMessage});
        isLoading = false;
        notifyListeners();
        throw l;
      },
      (r) {
        isLoading = false;
        notifyListeners();
      },
    );
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
