/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import '../../domain/model/ivr_call_history_model.dart';

abstract class IvrRepository {
  Future<List<IvrCallHistoryModel>> getIvrCallHistory({
    required String mobile,
    List<String>? callStatus,
  });
  Future makeIvrCall({required String patientMobile});
}
