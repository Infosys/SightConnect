/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_imaging_selection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostImagingSelectionModel _$$_PostImagingSelectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_PostImagingSelectionModel(
      identifier: json['identifier'] as int?,
      endpoint: json['endpoint'] as String?,
      baseUrl: json['baseUrl'] as String?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PostImagingSelectionModelToJson(
        _$_PostImagingSelectionModel instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'endpoint': instance.endpoint,
      'baseUrl': instance.baseUrl,
      'score': instance.score,
    };
