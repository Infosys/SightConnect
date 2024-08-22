import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';

class EncounterBriefEntity {
  final List<ContentBriefEntity>? content;
  final int? totalElements;
  final int? totalPages;
  final int? size;
  final int? number;
  final int? numberOfElements;
  final bool? empty;
  final bool? first;
  final bool? last;

  EncounterBriefEntity({
    this.content,
    this.totalElements,
    this.totalPages,
    this.size,
    this.number,
    this.numberOfElements,
    this.empty,
    this.first,
    this.last,
  });
}

class ContentBriefEntity {
  final String? encounterId;
  final String? timelineName;
  final String? timelineVersion;
  final EBStageName? encounterStatus;
  final DonorBriefEntity? donorBrief;
  final DateTime? intimateDate;
  final int? performerId;
  final DateTime? deathDate;
  final BodyLocationEntity? bodyLocation;
  final List<String>? organExtracted;
  final Map<String, dynamic>? metaData;

  ContentBriefEntity({
    this.encounterId,
    this.timelineName,
    this.timelineVersion,
    this.encounterStatus,
    this.donorBrief,
    this.intimateDate,
    this.performerId,
    this.deathDate,
    this.bodyLocation,
    this.organExtracted,
    this.metaData,
  });
}

class BodyLocationEntity {
  final String? addressLine1;
  final String? addressLine2;
  final String? street;
  final String? city;
  final String? state;
  final String? zipCode;
  final String? country;
  final String? landmark;
  final String? village;
  final String? district;
  final String? latitude;
  final String? longitude;
  final String? direction;

  BodyLocationEntity({
    this.addressLine1,
    this.addressLine2,
    this.street,
    this.city,
    this.state,
    this.zipCode,
    this.country,
    this.landmark,
    this.village,
    this.district,
    this.latitude,
    this.longitude,
    this.direction,
  });
}

class DonorBriefEntity {
  final int? id;
  final String? name;
  final String? contact;

  DonorBriefEntity({
    this.id,
    this.name,
    this.contact,
  });
}
