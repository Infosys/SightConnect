import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';

class EncounterBriefEntity {
  final int? encounterId;
  final EBStageName? encounterStatus;
  final DonorBriefEntity? donorBrief;
  final DateTime? intimateDate;
  final int? performerId;
  final DateTime? deathDate;
  final BodyLocationEntity? bodyLocation;
  final List<String>? organExtracted;
  final DateTime? lastModifiedDate;

  EncounterBriefEntity({
    this.encounterId,
    this.encounterStatus,
    this.donorBrief,
    this.intimateDate,
    this.performerId,
    this.deathDate,
    this.bodyLocation,
    this.organExtracted,
    this.lastModifiedDate,
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
