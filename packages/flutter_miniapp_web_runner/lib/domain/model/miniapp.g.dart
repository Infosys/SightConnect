// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'miniapp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MiniApps _$$_MiniAppsFromJson(Map<String, dynamic> json) => _$_MiniApps(
      allMiniApps: (json['allMiniApps'] as List<dynamic>?)
              ?.map((e) => MiniApp.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      miniAppInSessionId: json['miniAppInSessionId'] as String? ?? "",
    );

Map<String, dynamic> _$$_MiniAppsToJson(_$_MiniApps instance) =>
    <String, dynamic>{
      'allMiniApps': instance.allMiniApps,
      'miniAppInSessionId': instance.miniAppInSessionId,
    };

_$_MiniApp _$$_MiniAppFromJson(Map<String, dynamic> json) => _$_MiniApp(
      type: json['type'],
      id: json['id'],
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

Map<String, dynamic> _$$_MiniAppToJson(_$_MiniApp instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
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
