// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keycloak.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KeycloakResponse _$$_KeycloakResponseFromJson(Map<String, dynamic> json) =>
    _$_KeycloakResponse(
      accessToken: json['access_token'] as String,
      idToken: json['id_token'] as String,
      refreshToken: json['refresh_token'] as String,
      expiresIn: json['expires_in'] as int,
      refreshExpiresIn: json['refresh_expires_in'] as int,
    );

Map<String, dynamic> _$$_KeycloakResponseToJson(_$_KeycloakResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'id_token': instance.idToken,
      'refresh_token': instance.refreshToken,
      'expires_in': instance.expiresIn,
      'refresh_expires_in': instance.refreshExpiresIn,
    };
