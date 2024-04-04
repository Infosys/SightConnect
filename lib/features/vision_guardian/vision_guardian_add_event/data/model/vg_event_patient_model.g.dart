// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vg_event_patient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VisionGuardianEventPatientResponseModelImpl
    _$$VisionGuardianEventPatientResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$VisionGuardianEventPatientResponseModelImpl(
          patientId: json['patientId'] as int?,
          registryRef: json['registryRef'] as String?,
          name: json['name'] as String?,
          firstName: json['firstName'] as String?,
          lastName: json['lastName'] as String?,
          middleName: json['middleName'] as String?,
          accountStatus: json['accountStatus'] as String?,
          gender: json['gender'] as String?,
          profilePhoto: json['profilePhoto'] as String?,
          email: json['email'] as String?,
          dayOfBirth: json['dayOfBirth'] as String?,
          monthOfBirth: json['monthOfBirth'] as String?,
          yearOfBirth: json['yearOfBirth'] as String?,
          phoneNumber: json['phoneNumber'] as String?,
          parentPatientId: json['parentPatientId'] as int?,
          address: (json['address'] as List<dynamic>?)
              ?.map((e) => AddressModel.fromJson(e as Map<String, dynamic>))
              .toList(),
          dobSource: json['dobSource'] as String?,
        );

Map<String, dynamic> _$$VisionGuardianEventPatientResponseModelImplToJson(
        _$VisionGuardianEventPatientResponseModelImpl instance) =>
    <String, dynamic>{
      'patientId': instance.patientId,
      'registryRef': instance.registryRef,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
      'accountStatus': instance.accountStatus,
      'gender': instance.gender,
      'profilePhoto': instance.profilePhoto,
      'email': instance.email,
      'dayOfBirth': instance.dayOfBirth,
      'monthOfBirth': instance.monthOfBirth,
      'yearOfBirth': instance.yearOfBirth,
      'phoneNumber': instance.phoneNumber,
      'parentPatientId': instance.parentPatientId,
      'address': instance.address?.map((e) => e.toJson()).toList(),
      'dobSource': instance.dobSource,
    };

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressModelImpl(
      id: json['id'] as int?,
      line: json['line'] as String?,
      district: json['district'] as String?,
      state: json['state'] as String?,
      pincode: json['pincode'] as String?,
      label: json['label'] as String?,
      isPrimary: json['isPrimary'] as bool?,
      isDeleted: json['isDeleted'] as bool?,
      status: json['status'] as String?,
      ward: json['ward'] as String?,
      town: json['town'] as String?,
      village: json['village'] as String?,
      subDistrict: json['subDistrict'] as String?,
    );

Map<String, dynamic> _$$AddressModelImplToJson(_$AddressModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'line': instance.line,
      'district': instance.district,
      'state': instance.state,
      'pincode': instance.pincode,
      'label': instance.label,
      'isPrimary': instance.isPrimary,
      'isDeleted': instance.isDeleted,
      'status': instance.status,
      'ward': instance.ward,
      'town': instance.town,
      'village': instance.village,
      'subDistrict': instance.subDistrict,
    };
