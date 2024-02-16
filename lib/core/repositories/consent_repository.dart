import 'package:eye_care_for_all/core/models/consent_model.dart';

abstract class ConsentRepository {
  Future<ConsentModel> getConsent({String type = "PRIVACY_POLICY"});
  Future<void> setConsent(ConsentModel consent);
}
