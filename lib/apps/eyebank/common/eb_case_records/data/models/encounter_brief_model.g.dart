// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encounter_brief_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EncounterBriefModelImpl _$$EncounterBriefModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EncounterBriefModelImpl(
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => ContentBrief.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalElements: (json['totalElements'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toInt(),
      number: (json['number'] as num?)?.toInt(),
      numberOfElements: (json['numberOfElements'] as num?)?.toInt(),
      empty: json['empty'] as bool?,
      first: json['first'] as bool?,
      last: json['last'] as bool?,
    );

Map<String, dynamic> _$$EncounterBriefModelImplToJson(
        _$EncounterBriefModelImpl instance) =>
    <String, dynamic>{
      'content': instance.content?.map((e) => e.toJson()).toList(),
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
      'size': instance.size,
      'number': instance.number,
      'numberOfElements': instance.numberOfElements,
      'empty': instance.empty,
      'first': instance.first,
      'last': instance.last,
    };

_$ContentBriefImpl _$$ContentBriefImplFromJson(Map<String, dynamic> json) =>
    _$ContentBriefImpl(
      encounterId: json['encounterId'] as String?,
      timelineName: json['timelineName'] as String?,
      timelineVersion: json['timelineVersion'] as String?,
      encounterStatus: json['encounterStatus'] as String?,
      donorBrief: json['donorBrief'] == null
          ? null
          : DonorBrief.fromJson(json['donorBrief'] as Map<String, dynamic>),
      intimateDate:
          const TimestampConverter().fromJson(json['intimateDate'] as String?),
      performerId: (json['performerId'] as num?)?.toInt(),
      deathDate:
          const TimestampConverter().fromJson(json['deathDate'] as String?),
      bodyLocation: json['bodyLocation'] == null
          ? null
          : BodyLocation.fromJson(json['bodyLocation'] as Map<String, dynamic>),
      organExtracted: (json['organExtracted'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      metaData: json['metaData'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ContentBriefImplToJson(_$ContentBriefImpl instance) =>
    <String, dynamic>{
      'encounterId': instance.encounterId,
      'timelineName': instance.timelineName,
      'timelineVersion': instance.timelineVersion,
      'encounterStatus': instance.encounterStatus,
      'donorBrief': instance.donorBrief?.toJson(),
      'intimateDate': const TimestampConverter().toJson(instance.intimateDate),
      'performerId': instance.performerId,
      'deathDate': const TimestampConverter().toJson(instance.deathDate),
      'bodyLocation': instance.bodyLocation?.toJson(),
      'organExtracted': instance.organExtracted,
      'metaData': instance.metaData,
    };

_$BodyLocationImpl _$$BodyLocationImplFromJson(Map<String, dynamic> json) =>
    _$BodyLocationImpl(
      addressLine1: json['addressLine1'] as String?,
      addressLine2: json['addressLine2'] as String?,
      street: json['street'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipCode: json['zipCode'] as String?,
      country: json['country'] as String?,
      landmark: json['landmark'] as String?,
      village: json['village'] as String?,
      district: json['district'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      direction: json['direction'] as String?,
    );

Map<String, dynamic> _$$BodyLocationImplToJson(_$BodyLocationImpl instance) =>
    <String, dynamic>{
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
      'country': instance.country,
      'landmark': instance.landmark,
      'village': instance.village,
      'district': instance.district,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'direction': instance.direction,
    };

_$DonorBriefImpl _$$DonorBriefImplFromJson(Map<String, dynamic> json) =>
    _$DonorBriefImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      contact: json['contact'] as String?,
    );

Map<String, dynamic> _$$DonorBriefImplToJson(_$DonorBriefImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'contact': instance.contact,
    };
