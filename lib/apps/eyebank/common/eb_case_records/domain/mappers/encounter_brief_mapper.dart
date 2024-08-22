import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/models/encounter_brief_model.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/domain/entities/encounter_brief_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';

class EncounterBriefMapper {
  EncounterBriefMapper._();

  static EncounterBriefEntity mapToEntity(EncounterBriefModel model) {
    return EncounterBriefEntity(
      content: _mapContentBrief(model.content ?? []),
      totalPages: model.totalPages,
      size: model.size,
      number: model.number,
      numberOfElements: model.numberOfElements,
      empty: model.empty,
      first: model.first,
      last: model.last,
    );
  }

  static List<ContentBriefEntity> _mapContentBrief(List<ContentBrief> contentModel) {
    return contentModel
        .map(
          (contentModel) => ContentBriefEntity(
            encounterId: contentModel.encounterId,
            timelineName: contentModel.timelineName,
            timelineVersion: contentModel.timelineVersion,
            encounterStatus: _getStageName(contentModel.encounterStatus),
            donorBrief: contentModel.donorBrief != null
                ? DonorBriefEntity(
                    id: contentModel.donorBrief?.id,
                    name: contentModel.donorBrief?.name,
                    contact: contentModel.donorBrief?.contact,
                  )
                : null,
            intimateDate: contentModel.intimateDate,
            performerId: contentModel.performerId,
            deathDate: contentModel.deathDate,
            bodyLocation: contentModel.bodyLocation != null
                ? BodyLocationEntity(
                    addressLine1: contentModel.bodyLocation?.addressLine1,
                    addressLine2: contentModel.bodyLocation?.addressLine2,
                    street: contentModel.bodyLocation?.street,
                    city: contentModel.bodyLocation?.city,
                    state: contentModel.bodyLocation?.state,
                    zipCode: contentModel.bodyLocation?.zipCode,
                    country: contentModel.bodyLocation?.country,
                    landmark: contentModel.bodyLocation?.landmark,
                    village: contentModel.bodyLocation?.village,
                    district: contentModel.bodyLocation?.district,
                    latitude: contentModel.bodyLocation?.latitude,
                    longitude: contentModel.bodyLocation?.longitude,
                    direction: contentModel.bodyLocation?.direction,
                  )
                : null,
            organExtracted: contentModel.organExtracted,
            metaData: contentModel.metaData,
          ),
        )
        .toList();
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
