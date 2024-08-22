import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/eb_submit_form_data_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/eb_timeline_config_model.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';

import '../../models/eb_timeline_model.dart';

abstract class EyeBankRepository {
  Future<Either<EBFailure, List<EBTimelineModel>>> fetchTimelineByID(
    String encounterID,
  );

  Future<Either<EBFailure, EbTimelineConfigModel>> fetchTimelineStages(
      String timelineName, String timelineVersion);
  Future<Either<EBFailure, void>> saveIntimationForm(
    EBSubmitFormDataRequestModel requestData,
  );
}

enum IdentifierType {
  ENCOUNTER,
  SERVICE_REQUEST,
  BDP,
}

enum EncounterStatus {
  COMPLETED,
  PENDING,
  REJECTED,
  ACTIVE,
}

enum Reason { UNSUITABLE }
