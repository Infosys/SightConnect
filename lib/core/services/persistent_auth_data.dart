import 'dart:convert';
import 'dart:developer';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:password_generator/password_generator.dart';

class PersistentAuthData {
  final FlutterSecureStorage _storage;

  PersistentAuthData()
      : _storage = const FlutterSecureStorage(
          aOptions: AndroidOptions(
            encryptedSharedPreferences: true,
          ),
        );
  final String _accessKey = "accessToken";
  final String _refreshKey = "refreshToken";
  final String _rolesKey = "role";
  final String _activeRoleKey = "activeRole";
  final String _usernameKey = "username";
  final String _userIdKey = "userId";
  final String _id_token = "id_token";
  final String _sqfliteKey = 'sqflite_pass';
  final String _userType = 'userType';

  String? accessToken;
  String? refreshToken;
  List<dynamic>? roles;
  String? activeRole;
  String? username;
  String? userId;
  String? idToken;
  String? userType;

  bool get isLoggedIn => accessToken != null && refreshToken != null;
  bool get isUserTypeBeta => userType == 'BETA';

  Future<void> initialize() async {
    accessToken = await _storage.read(key: _accessKey);
    refreshToken = await _storage.read(key: _refreshKey);
    username = await _storage.read(key: _usernameKey);
    userId = await _storage.read(key: _userIdKey);
    idToken = await _storage.read(key: _id_token);
    final rolesJson = await _storage.read(key: _rolesKey);
    roles = rolesJson != null ? List<String>.from(jsonDecode(rolesJson)) : null;
    activeRole = await _storage.read(key: _activeRoleKey);
    userType = await _storage.read(key: _userType);

    if (kDebugMode) {
      log("ACCESS TOKEN: $accessToken\n\n\n");
      log("REFRESH TOKEN: $refreshToken\n\n\n");
      log("ROLES: $roles\n\n\n");
      log("USERNAME: $username\n\n\n");
      log("USERID: $userId\n\n\n");
      log("ID TOKEN: $idToken\n\n\n");
      log("ACTIVE ROLE: $activeRole\n\n\n");
      log("USER TYPE: $userType\n\n\n");
    }
  }

  Future<void> saveUserProfileId(String id) async {
    userId = id;
    await _storage.write(key: _userIdKey, value: id);
  }

  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    this.accessToken = accessToken;
    this.refreshToken = refreshToken;
    await _storage.write(key: _accessKey, value: accessToken);
    await _storage.write(key: _refreshKey, value: refreshToken);
    final decodedToken = JwtDecoder.decode(accessToken);

    await saveUserType(decodedToken['USER_TYPE'] ?? "PROD");

    final roles = decodedToken['realm_access']['roles'] as List<dynamic>;

    roles.removeWhere((element) => !element.toString().startsWith("ROLE_"));
    final username = decodedToken['preferred_username'];
    await _saveRolesAndUserName(roles, username);
  }

  Future<void> _saveRolesAndUserName(
      List<dynamic> roles, String username) async {
    this.roles = roles;
    this.username = username;
    await _storage.write(key: _rolesKey, value: jsonEncode(roles));
    await _storage.write(key: _usernameKey, value: username);
  }

  Future<void> setActiveRole(String role) async {
    activeRole = role;
    await _storage.write(key: _activeRoleKey, value: role);
  }

  Future<void> getActiveRole() async {
    activeRole = await _storage.read(key: _activeRoleKey);
  }

  Future<void> saveUserType(String userType) async {
    this.userType = userType;
    await _storage.write(key: _userType, value: userType);
  }

  Future<void> saveIdToken(String idToken) async {
    this.idToken = idToken;
    await _storage.write(key: _id_token, value: idToken);
  }

  Future<String?> getAccessToken() async {
    return await _storage.read(key: _accessKey);
  }

  bool hasAccessTokenExpired() {
    if (accessToken == null) return true;
    return _hasTokenExpired(accessToken!);
  }

  bool hasRefreshTokenExpired() {
    if (refreshToken == null) return true;
    return _hasTokenExpired(refreshToken!);
  }

  Future<void> updateAccessToken({
    required String accessToken,
  }) async {
    this.accessToken = accessToken;
    await _storage.write(key: _accessKey, value: accessToken);
  }

  Future<void> updateRefreshToken({
    required String refreshToken,
  }) async {
    this.refreshToken = refreshToken;
    await _storage.write(key: _refreshKey, value: refreshToken);
  }

  Future<String> getSQFlitePassword() async {
    final password = await _storage.read(key: _sqfliteKey);
    if (password == null) {
      final securePassword = PasswordGenerator(
        length: 21,
        hasCapitalLetters: true,
        hasNumbers: true,
        hasSmallLetters: true,
        hasSymbols: true,
      ).generatePassword();
      await _storage.write(key: _sqfliteKey, value: securePassword);
      return securePassword;
    } else {
      return password;
    }
  }

  Future<void> deleteSQFlitePassword() async {
    await _storage.delete(key: _sqfliteKey);
  }

  Future<void> logout() async {
    await _storage.delete(key: _accessKey);
    await _storage.delete(key: _refreshKey);
    await _storage.delete(key: _rolesKey);
    await _storage.delete(key: _activeRoleKey);

    await _storage.delete(key: _usernameKey);
    await _storage.delete(key: _userIdKey);
    await _storage.delete(key: _id_token);
    await _storage.delete(key: _userType);
    //SQFLite
    // await _storage.delete(key: _sqfliteKey);

    accessToken = null;
    refreshToken = null;
    roles = null;
    username = null;
    userId = null;
    idToken = null;
    activeRole = null;
    userType = null;
    logger.d("Logged out successfully");
    logger.d({
      'accessTokenData': accessToken,
      'refreshTokenData': refreshToken,
      'roles': roles,
      'username': username,
      'userId': userId,
      'idToken': idToken,
      'activeRole': activeRole,
    });
  }

  bool _hasTokenExpired(String token) {
    try {
      return JwtDecoder.isExpired(token);
    } catch (e) {
      logger.d(e);
    }
    return true;
  }

  @override
  String toString() {
    final data = {
      'accessTokenData': JwtDecoder.decode(accessToken!),
      'refreshTokenData': JwtDecoder.decode(refreshToken!),
    };

    return const JsonEncoder.withIndent('  ').convert(data);
  }
}
