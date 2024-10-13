/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_observations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostObservationsModel _$$_PostObservationsModelFromJson(
        Map<String, dynamic> json) =>
    _$_PostObservationsModel(
      identifier: json['identifier'] as int?,
      value: json['value'] as String?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PostObservationsModelToJson(
        _$_PostObservationsModel instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'value': instance.value,
      'score': instance.score,
    };
