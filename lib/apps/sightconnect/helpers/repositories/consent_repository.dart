/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/helpers/models/consent_model.dart';

abstract class ConsentRepository {
  Future<List<ConsentModel>> getConsent({String? type});
  Future<void> setConsent(ConsentModel consent);
}
