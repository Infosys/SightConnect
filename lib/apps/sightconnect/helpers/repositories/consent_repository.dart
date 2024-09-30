import 'package:eye_care_for_all/apps/sightconnect/helpers/models/consent_model.dart';

abstract class ConsentRepository {
  Future<List<ConsentModel>> getConsent({String? type});
  Future<void> setConsent(ConsentModel consent);
}
