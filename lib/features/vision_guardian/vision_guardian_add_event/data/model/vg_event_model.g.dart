// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vg_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VisionGuardianEventModel _$$_VisionGuardianEventModelFromJson(
        Map<String, dynamic> json) =>
    _$_VisionGuardianEventModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      serviceProvider: json['serviceProvider'] as int?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      maximumAttendeeCapacity: json['maximumAttendeeCapacity'] as int?,
      sponsor: json['sponsor'] as String?,
      eventStatus: json['eventStatus'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) =>
              VisionGuardianEventImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) =>
              VisionGuardianEventAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VisionGuardianEventModelToJson(
        _$_VisionGuardianEventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'serviceProvider': instance.serviceProvider,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'maximumAttendeeCapacity': instance.maximumAttendeeCapacity,
      'sponsor': instance.sponsor,
      'eventStatus': instance.eventStatus,
      'images': instance.images,
      'addresses': instance.addresses,
    };

_$_VisionGuardianEventImage _$$_VisionGuardianEventImageFromJson(
        Map<String, dynamic> json) =>
    _$_VisionGuardianEventImage(
      id: json['id'] as int?,
      baseUrl: json['baseUrl'] as String?,
      endpoint: json['endpoint'] as String?,
      fileId: json['fileId'] as String?,
      thumbnail: json['thumbnail'] as bool?,
      status: json['status'] as String?,
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$$_VisionGuardianEventImageToJson(
        _$_VisionGuardianEventImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'baseUrl': instance.baseUrl,
      'endpoint': instance.endpoint,
      'fileId': instance.fileId,
      'thumbnail': instance.thumbnail,
      'status': instance.status,
      'isDeleted': instance.isDeleted,
    };

_$_VisionGuardianEventAddress _$$_VisionGuardianEventAddressFromJson(
        Map<String, dynamic> json) =>
    _$_VisionGuardianEventAddress(
      id: json['id'] as int?,
      venueName: json['venueName'] as String?,
      addressLine1: json['addressLine1'] as String?,
      addressLine2: json['addressLine2'] as String?,
      landmark: json['landmark'] as String?,
      street: json['street'] as String?,
      city: json['city'] as String?,
      subDistrict: json['subDistrict'] as String?,
      district: json['district'] as String?,
      state: json['state'] as String?,
      pinCode: json['pinCode'] as String?,
      country: json['country'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      isPrimary: json['isPrimary'] as bool?,
      addressType: json['addressType'] as String?,
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$$_VisionGuardianEventAddressToJson(
        _$_VisionGuardianEventAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'venueName': instance.venueName,
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'landmark': instance.landmark,
      'street': instance.street,
      'city': instance.city,
      'subDistrict': instance.subDistrict,
      'district': instance.district,
      'state': instance.state,
      'pinCode': instance.pinCode,
      'country': instance.country,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'isPrimary': instance.isPrimary,
      'addressType': instance.addressType,
      'isDeleted': instance.isDeleted,
    };
