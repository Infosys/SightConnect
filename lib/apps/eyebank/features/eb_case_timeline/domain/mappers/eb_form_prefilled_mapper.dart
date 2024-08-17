import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/data/models/eb_form_prefilled_response_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/entities/eb_form_prefilled_response_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';
import 'package:eye_care_for_all/main.dart';

class EBFormPrefilledMapper {
  EBFormPrefilledMapper._();

  static EBFormPrefilledResponseEntity mapToEntity(
    EBFormPrefilledResponseModel model,
  ) {
    try {
      return EBFormPrefilledResponseEntity(
        encounterId: model.encounterId,
        tenantId: model.tenantId,
        stageName: _getStageName(model.stageName),
        assessmentVersion: model.assessmentVersion,
        eBforms: model.eBforms?.map((e) {
          return EBFormEntity(
            identifier: e.identifier,
            identifierType: e.identifierType,
            eBformData: e.eBformData,
          );
        }).toList(),
      );
    } catch (e) {
      logger.e(e);
      throw Exception('Failed to map model to entity');
    }
  }

  static _getStageName(String? stage) {
    const stages = EBStageName.values;
    for (var i = 0; i < stages.length; i++) {
      if (stages[i].name == stage) {
        return stages[i];
      }
    }
  }
}
