// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vg_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VisionGuardianEventModelImpl _$$VisionGuardianEventModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VisionGuardianEventModelImpl(
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

Map<String, dynamic> _$$VisionGuardianEventModelImplToJson(
        _$VisionGuardianEventModelImpl instance) =>
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
      'images': instance.images?.map((e) => e.toJson()).toList(),
      'addresses': instance.addresses?.map((e) => e.toJson()).toList(),
    };

_$VisionGuardianEventImageImpl _$$VisionGuardianEventImageImplFromJson(
        Map<String, dynamic> json) =>
    _$VisionGuardianEventImageImpl(
      id: json['id'] as int?,
      baseUrl: json['baseUrl'] as String?,
      endpoint: json['endpoint'] as String?,
      fileId: json['fileId'] as String?,
      thumbnail: json['thumbnail'] as bool?,
      status: json['status'] as String?,
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$$VisionGuardianEventImageImplToJson(
        _$VisionGuardianEventImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'baseUrl': instance.baseUrl,
      'endpoint': instance.endpoint,
      'fileId': instance.fileId,
      'thumbnail': instance.thumbnail,
      'status': instance.status,
      'isDeleted': instance.isDeleted,
    };

_$VisionGuardianEventAddressImpl _$$VisionGuardianEventAddressImplFromJson(
        Map<String, dynamic> json) =>
    _$VisionGuardianEventAddressImpl(
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

Map<String, dynamic> _$$VisionGuardianEventAddressImplToJson(
        _$VisionGuardianEventAddressImpl instance) =>
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
