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
  ROLE_EYE_BANK,
  ROLE_ORG_ADMIN,
  ROLE_VOLUNTEER
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
    case "ROLE_EYE_BANK":
      return Role.ROLE_EYE_BANK;
    case "ROLE_ORG_ADMIN":
      return Role.ROLE_ORG_ADMIN;
    case "ROLE_VOLUNTEER":
      return Role.ROLE_VOLUNTEER;
    default:
      return null;
  }
}

String roleToString(Role role) {
  switch (role) {
    case Role.ROLE_PATIENT:
      return "ROLE_PATIENT";
    case Role.ROLE_VISION_GUARDIAN:
      return "ROLE_VISION_GUARDIAN";
    case Role.ROLE_VISION_TECHNICIAN:
      return "ROLE_VISION_TECHNICIAN";
    case Role.ROLE_OPTOMETRIST:
      return "ROLE_OPTOMETRIST";
    case Role.ROLE_EYE_BANK:
      return "ROLE_EYE_BANK";
    case Role.ROLE_ORG_ADMIN:
      return "ROLE_ORG_ADMIN";

    case Role.ROLE_VOLUNTEER:
      return "ROLE_VOLUNTEER";
    default:
      return "";
  }
}

List<Role?> roleListMapper(List<dynamic> roles) {
  final result = roles.map((e) => roleMapper(e)).toList();
  // remove all nulls
  result.removeWhere((element) => element == null);
  return result;
}
