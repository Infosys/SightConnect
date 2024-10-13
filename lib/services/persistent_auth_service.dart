/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/services/persistent_auth_data.dart';

class PersistentAuthStateService {
  PersistentAuthStateService._();

  static late final PersistentAuthData authState;

  static Future<void> intializeAuth([bool forceNewSession = false]) async {
    authState = PersistentAuthData();
    await authState.initialize();
    if (forceNewSession) {
      await authState.logout();
    }
  }
}
