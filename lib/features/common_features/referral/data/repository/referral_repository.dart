import 'package:eye_care_for_all/features/common_features/referral/data/models/referral_response_model.dart';

abstract class ReferralRepository {
  Future<ReferralCodeModel> getReferral();
  Future<ReferralRequestModel> submitReferral(String code);
}
