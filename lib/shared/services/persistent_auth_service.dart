import 'package:eye_care_for_all/shared/services/persistent_auth_data.dart';

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
