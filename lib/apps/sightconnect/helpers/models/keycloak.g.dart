/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keycloak.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KeycloakResponseImpl _$$KeycloakResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$KeycloakResponseImpl(
      accessToken: json['access_token'] as String,
      idToken: json['id_token'] as String,
      refreshToken: json['refresh_token'] as String,
      expiresIn: (json['expires_in'] as num).toInt(),
      refreshExpiresIn: (json['refresh_expires_in'] as num).toInt(),
    );

Map<String, dynamic> _$$KeycloakResponseImplToJson(
        _$KeycloakResponseImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'id_token': instance.idToken,
      'refresh_token': instance.refreshToken,
      'expires_in': instance.expiresIn,
      'refresh_expires_in': instance.refreshExpiresIn,
    };
