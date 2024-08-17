import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/models/encounter_brief_model.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/domain/entities/encounter_brief_entity.dart';

class EncounterBriefMapper {
  EncounterBriefMapper._();

  EncounterBriefEntity mapToEntity(EncounterBriefModel model) {
    return EncounterBriefEntity(
      encounterId: model.encounterId,
      encounterStatus: model.encounterStatus,
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
            )
          : null,
      organExtracted: model.organExtracted,
      lastModifiedDate: model.lastModifiedDate,
    );
  }
}
