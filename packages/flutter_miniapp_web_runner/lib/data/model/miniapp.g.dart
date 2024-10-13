/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'miniapp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiniAppsImpl _$$MiniAppsImplFromJson(Map<String, dynamic> json) =>
    _$MiniAppsImpl(
      allMiniApps: (json['allMiniApps'] as List<dynamic>?)
              ?.map((e) => MiniApp.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      miniAppInSessionId: json['miniAppInSessionId'] as String? ?? "",
    );

Map<String, dynamic> _$$MiniAppsImplToJson(_$MiniAppsImpl instance) =>
    <String, dynamic>{
      'allMiniApps': instance.allMiniApps,
      'miniAppInSessionId': instance.miniAppInSessionId,
    };

_$MiniAppImpl _$$MiniAppImplFromJson(Map<String, dynamic> json) =>
    _$MiniAppImpl(
      type: json['type'],
      id: json['id'],
      version: json['version'],
      identifier: json['identifier'],
      name: json['name'],
      summary: json['summary'],
      owner: json['owner'],
      iconUrl: json['iconUrl'],
      displayName: json['displayName'],
      redirectPage: json['redirectPage'],
      tags: json['tags'],
      sourceurl: json['sourceurl'],
    );

Map<String, dynamic> _$$MiniAppImplToJson(_$MiniAppImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'version': instance.version,
      'identifier': instance.identifier,
      'name': instance.name,
      'summary': instance.summary,
      'owner': instance.owner,
      'iconUrl': instance.iconUrl,
      'displayName': instance.displayName,
      'redirectPage': instance.redirectPage,
      'tags': instance.tags,
      'sourceurl': instance.sourceurl,
    };
