/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consent_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsentModelImpl _$$ConsentModelImplFromJson(Map<String, dynamic> json) =>
    _$ConsentModelImpl(
      templateId: (json['templateId'] as num?)?.toInt(),
      consentVersion: json['consentVersion'] as String?,
      templateType: json['templateType'] as String?,
      consentStatus:
          $enumDecodeNullable(_$ConsentStatusEnumMap, json['consentStatus']) ??
              ConsentStatus.PENDING,
      acknowledgeDate: json['acknowledgeDate'] as String?,
    );

Map<String, dynamic> _$$ConsentModelImplToJson(_$ConsentModelImpl instance) =>
    <String, dynamic>{
      'templateId': instance.templateId,
      'consentVersion': instance.consentVersion,
      'templateType': instance.templateType,
      'consentStatus': _$ConsentStatusEnumMap[instance.consentStatus]!,
      'acknowledgeDate': instance.acknowledgeDate,
    };

const _$ConsentStatusEnumMap = {
  ConsentStatus.ACKNOWLEDGED: 'ACKNOWLEDGED',
  ConsentStatus.WITHDRAWN: 'WITHDRAWN',
  ConsentStatus.PENDING: 'PENDING',
};
