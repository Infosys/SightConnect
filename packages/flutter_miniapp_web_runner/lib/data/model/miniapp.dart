import 'package:freezed_annotation/freezed_annotation.dart';
part 'miniapp.freezed.dart';
part 'miniapp.g.dart';

@freezed
class MiniApps with _$MiniApps {
  factory MiniApps({
    @Default([]) List<MiniApp> allMiniApps,
    @Default("") String miniAppInSessionId,
  }) = _MiniApps;

  factory MiniApps.fromJson(Map<String, dynamic> json) =>
      _$MiniAppsFromJson(json);
}

@freezed
class MiniApp with _$MiniApp {
  factory MiniApp({
    dynamic type,
    dynamic id,
    dynamic version,
    dynamic identifier,
    dynamic name,
    dynamic summary,
    dynamic owner,
    dynamic iconUrl,
    dynamic displayName,
    dynamic redirectPage,
    dynamic tags,
    dynamic sourceurl,
  }) = _MiniApp;

  factory MiniApp.fromJson(Map<String, dynamic> json) =>
      _$MiniAppFromJson(json);
}
