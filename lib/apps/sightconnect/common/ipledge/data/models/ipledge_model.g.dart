/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipledge_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IPledgeModelImpl _$$IPledgeModelImplFromJson(Map<String, dynamic> json) =>
    _$IPledgeModelImpl(
      id: (json['id'] as num?)?.toInt(),
      kinName: json['kinName'] as String?,
      kinContact: json['kinContact'] as String?,
      kinRelation: json['kinRelation'] as String?,
      pledgeDate:
          const TimestampConverter().fromJson(json['pledgeDate'] as String?),
      pledgeType: json['pledgeType'] as String?,
      additionalInfo: json['additionalInfo'] as String?,
      patientId: (json['patientId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$IPledgeModelImplToJson(_$IPledgeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kinName': instance.kinName,
      'kinContact': instance.kinContact,
      'kinRelation': instance.kinRelation,
      'pledgeDate': const TimestampConverter().toJson(instance.pledgeDate),
      'pledgeType': instance.pledgeType,
      'additionalInfo': instance.additionalInfo,
      'patientId': instance.patientId,
    };
