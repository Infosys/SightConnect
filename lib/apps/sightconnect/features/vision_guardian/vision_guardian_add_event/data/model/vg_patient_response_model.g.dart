/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vg_patient_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VisionGuardianPatientResponseModelImpl
    _$$VisionGuardianPatientResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$VisionGuardianPatientResponseModelImpl(
          id: (json['id'] as num?)?.toInt(),
          name: json['name'] as String?,
          mobile: json['mobile'] as String?,
          yearOfBirth: json['yearOfBirth'] as String?,
          monthOfBirth: json['monthOfBirth'] as String?,
          dayOfBirth: json['dayOfBirth'] as String?,
          gender: json['gender'] as String?,
          districtName: json['districtName'] as String?,
          townName: json['townName'] as String?,
          pincode: json['pincode'] as String?,
          encounterId: (json['encounterId'] as num?)?.toInt(),
          diagnosticReportId: (json['diagnosticReportId'] as num?)?.toInt(),
          encounterStartDate: json['encounterStartDate'] as String?,
          status: json['status'] as String?,
          category: json['category'] as String?,
        );

Map<String, dynamic> _$$VisionGuardianPatientResponseModelImplToJson(
        _$VisionGuardianPatientResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mobile': instance.mobile,
      'yearOfBirth': instance.yearOfBirth,
      'monthOfBirth': instance.monthOfBirth,
      'dayOfBirth': instance.dayOfBirth,
      'gender': instance.gender,
      'districtName': instance.districtName,
      'townName': instance.townName,
      'pincode': instance.pincode,
      'encounterId': instance.encounterId,
      'diagnosticReportId': instance.diagnosticReportId,
      'encounterStartDate': instance.encounterStartDate,
      'status': instance.status,
      'category': instance.category,
    };
