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
  // toSTring() method

  @override
  String toString() {
    return 'EncounterBriefEntity(content: $content, totalElements: $totalElements, totalPages: $totalPages, size: $size, number: $number, numberOfElements: $numberOfElements, empty: $empty, first: $first, last: $last)';
  }
}

class ContentBriefEntity {
  final String? encounterId;
  final String? timelineName;
  final String? timelineVersion;
  final List<EBStageName> activeStages;
  final DonorBriefEntity? donorBrief;
  final NotifierBriefEntity? notifierBrief;
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
    this.activeStages = const [],
    this.donorBrief,
    this.notifierBrief,
    this.intimateDate,
    this.performerId,
    this.deathDate,
    this.bodyLocation,
    this.organExtracted,
    this.metaData,
  });

  @override
  String toString() {
    return 'ContentBriefEntity(encounterId: $encounterId, timelineName: $timelineName, timelineVersion: $timelineVersion, activeStages: $activeStages, donorBrief: $donorBrief, intimateDate: $intimateDate, performerId: $performerId, deathDate: $deathDate, bodyLocation: $bodyLocation, organExtracted: $organExtracted, metaData: $metaData)';
  }
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

  @override
  String toString() {
    return 'BodyLocationEntity(addressLine1: $addressLine1, addressLine2: $addressLine2, street: $street, city: $city, state: $state, zipCode: $zipCode, country: $country, landmark: $landmark, village: $village, district: $district, latitude: $latitude, longitude: $longitude, direction: $direction)';
  }
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
  @override
  String toString() {
    return 'DonorBriefEntity(id: $id, name: $name, contact: $contact)';
  }
}

class NotifierBriefEntity {
  final int? id;
  final String? name;
  final String? contact;

  NotifierBriefEntity({
    this.id,
    this.name,
    this.contact,
  });
  @override
  String toString() {
    return 'NotifierBriefEntity(id: $id, name: $name, contact: $contact)';
  }
}
