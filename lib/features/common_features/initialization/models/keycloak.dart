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

enum Role {
  ROLE_PATIENT(),
  ROLE_VISION_GUARDIAN,
  ROLE_VISION_TECHNICIAN,
  ROLE_OPTOMETRIST,
}

Role? roleMapper(String? role) {
  switch (role) {
    case "ROLE_PATIENT":
      return Role.ROLE_PATIENT;
    case "ROLE_VISION_GUARDIAN":
      return Role.ROLE_VISION_GUARDIAN;
    case "ROLE_VISION_TECHNICIAN":
      return Role.ROLE_VISION_TECHNICIAN;
    case "ROLE_OPTOMETRIST":
      return Role.ROLE_OPTOMETRIST;
    default:
      return null;
  }
}
