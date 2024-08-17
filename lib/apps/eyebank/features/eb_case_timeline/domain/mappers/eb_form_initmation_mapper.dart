import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/data/models/eb_form_intimation_response_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/entities/en_form_initimation_response_entity.dart';

class EbFormInitmationMapper {
  EbFormInitmationMapper._();

  static EBFormIntimationResponseEntity toEntity(
      EBFormIntimationResponseModel model) {
    try {
      return EBFormIntimationResponseEntity(
        timelineName: model.timelineName,
        timelineVersion: model.timelineVersion,
        stage: model.stage,
      );
    } catch (e) {
      // Handle or log the error as needed
      rethrow;
    }
  }
}
