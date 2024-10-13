/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDetailsImpl _$$UserDetailsImplFromJson(Map<String, dynamic> json) =>
    _$UserDetailsImpl(
      patientId: json['patientId'] as String?,
      patientName: json['patientName'] as String?,
      patientAge: json['patientAge'] as String?,
      address: json['address'] as String?,
      modileNumber: json['modileNumber'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      gender: json['gender'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      profileImage: json['profileImage'] as String?,
      condition: json['condition'] as String?,
      isTestTaken: json['isTestTaken'] as bool?,
      treatment: json['treatment'] as String?,
      diagnosis: json['diagnosis'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$UserDetailsImplToJson(_$UserDetailsImpl instance) =>
    <String, dynamic>{
      'patientId': instance.patientId,
      'patientName': instance.patientName,
      'patientAge': instance.patientAge,
      'address': instance.address,
      'modileNumber': instance.modileNumber,
      'city': instance.city,
      'state': instance.state,
      'gender': instance.gender,
      'dateOfBirth': instance.dateOfBirth,
      'profileImage': instance.profileImage,
      'condition': instance.condition,
      'isTestTaken': instance.isTestTaken,
      'treatment': instance.treatment,
      'diagnosis': instance.diagnosis,
      'status': instance.status,
    };
