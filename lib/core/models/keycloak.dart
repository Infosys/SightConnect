import 'package:freezed_annotation/freezed_annotation.dart';

part 'keycloak.freezed.dart';
part 'keycloak.g.dart';

@freezed
class KeycloakResponse with _$KeycloakResponse {
  factory KeycloakResponse({
    @JsonKey(name: "access_token") required String accessToken,
    @JsonKey(name: "id_token") required String idToken,
    @JsonKey(name: "refresh_token") required String refreshToken,
    @JsonKey(name: "expires_in") required int expiresIn,
    @JsonKey(name: "refresh_expires_in") required int refreshExpiresIn,
  }) = _KeycloakResponse;

  factory KeycloakResponse.fromJson(Map<String, dynamic> json) =>
      _$KeycloakResponseFromJson(json);
}
