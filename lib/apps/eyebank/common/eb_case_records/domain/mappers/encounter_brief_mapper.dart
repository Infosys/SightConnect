import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/models/encounter_brief_model.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/domain/entities/encounter_brief_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';

class EncounterBriefMapper {
  EncounterBriefMapper._();

  static EncounterBriefEntity mapToEntity(EncounterBriefModel model) {
    return EncounterBriefEntity(
      encounterId: model.encounterId,
      timelineName: model.timelineName,
      timelineVersion: model.timelineVersion,
      encounterStatus: _getStageName(model.encounterStatus),
      donorBrief: model.donorBrief != null
          ? DonorBriefEntity(
              id: model.donorBrief?.id,
              name: model.donorBrief?.name,
              contact: model.donorBrief?.contact,
            )
          : null,
      intimateDate: model.intimateDate,
      performerId: model.performerId,
      deathDate: model.deathDate,
      bodyLocation: model.bodyLocation != null
          ? BodyLocationEntity(
              addressLine1: model.bodyLocation?.addressLine1,
              addressLine2: model.bodyLocation?.addressLine2,
              street: model.bodyLocation?.street,
              city: model.bodyLocation?.city,
              state: model.bodyLocation?.state,
              zipCode: model.bodyLocation?.zipCode,
              country: model.bodyLocation?.country,
              landmark: model.bodyLocation?.landmark,
              village: model.bodyLocation?.village,
              district: model.bodyLocation?.district,
              latitude: model.bodyLocation?.latitude,
              longitude: model.bodyLocation?.longitude,
              direction: model.bodyLocation?.direction,
            )
          : null,
      organExtracted: model.organExtracted,
      lastModifiedDate: model.lastModifiedDate,
    );
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
