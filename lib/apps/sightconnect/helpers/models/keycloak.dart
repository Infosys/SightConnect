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

enum Permissions { EVENT_CREATOR, EYEBANK_ADMIN }

enum Role {
  ROLE_PATIENT,
  ROLE_VISION_GUARDIAN,
  ROLE_VISION_TECHNICIAN,
  ROLE_OPTOMETRIST,
  ROLE_EYEBANK_TECHNICIAN,
  ROLE_VOLUNTEER
}

Permissions? permissionMapper(String? permission) {
  switch (permission) {
    case "EVENT_CREATOR":
      return Permissions.EVENT_CREATOR;
    case "EYEBANK_ADMIN":
      return Permissions.EYEBANK_ADMIN;
    default:
      return null;
  }
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
    case "ROLE_VOLUNTEER":
      return Role.ROLE_VOLUNTEER;
    case "ROLE_EYEBANK_TECHNICIAN":
      return Role.ROLE_EYEBANK_TECHNICIAN;
    default:
      return null;
  }
}

String permissionToString(Permissions permission) {
  switch (permission) {
    case Permissions.EVENT_CREATOR:
      return "EVENT_CREATOR";
    case Permissions.EYEBANK_ADMIN:
      return "EYEBANK_ADMIN";
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
    case Role.ROLE_VOLUNTEER:
      return "ROLE_VOLUNTEER";
    case Role.ROLE_EYEBANK_TECHNICIAN:
      return "ROLE_EYEBANK_TECHNICIAN";
    default:
      return "";
  }
}

List<Permissions?> permissionListMapper(List<dynamic> permissions) {
  final result = permissions.map((e) => permissionMapper(e)).toList();
  // remove all nulls
  result.removeWhere((element) => element == null);
  return result;
}

List<Role?> roleListMapper(List<dynamic> roles) {
  final result = roles.map((e) => roleMapper(e)).toList();
  // remove all nulls
  result.removeWhere((element) => element == null);
  return result;
}
