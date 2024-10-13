/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/referral/data/models/referral_response_model.dart';

abstract class ReferralRepository {
  Future<ReferralCodeModel> getReferral();
  Future<ReferralRequestModel?> getMyReferrer();
  Future<MyReferralModel?> getMyReferral({bool statistics = false});
  Future<ReferralRequestModel> submitReferral(String code);
}
