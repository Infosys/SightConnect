import 'dart:convert';
import 'dart:developer';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class PersistentAuthData {
  final FlutterSecureStorage _storage;

  PersistentAuthData() : _storage = const FlutterSecureStorage();
  final String _accessKey = "accessToken";
  final String _refreshKey = "refreshToken";
  final String _roleKey = "role";
  final String _usernameKey = "username";
  final String _userIdKey = "userId";
  final String _id_token = "id_token";

  String? accessToken;
  String? refreshToken;
  String? role;
  String? username;
  String? userId;
  String? idToken;

  bool get isLoggedIn => accessToken != null && refreshToken != null;
  String? get userProfileId => userId;
  String get userRole => role ?? "UNKNOWN";
  String? get tokenId => idToken;

  Future<void> initialize() async {
    accessToken = await _storage.read(key: _accessKey);
    refreshToken = await _storage.read(key: _refreshKey);
    role = await _storage.read(key: _roleKey);
    username = await _storage.read(key: _usernameKey);
    userId = await _storage.read(key: _userIdKey);
    idToken = await _storage.read(key: _id_token);
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
    final String role =
        (JwtDecoder.decode(accessToken)['realm_access']['roles'] as List)
                .contains("ROLE_PATIENT")
            ? "ROLE_PATIENT"
            : "UNKNOWN";

    final username = JwtDecoder.decode(accessToken)['preferred_username'];
    await _saveRoleAndUserName(role, username);
  }

  Future<void> _saveRoleAndUserName(String role, String username) async {
    this.role = role;
    this.username = username;
    await _storage.write(key: _roleKey, value: role);
    await _storage.write(key: _usernameKey, value: username);
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

  Future<void> logout() async {
    await _storage.delete(key: _accessKey);
    await _storage.delete(key: _refreshKey);
    await _storage.delete(key: _roleKey);
    await _storage.delete(key: _usernameKey);
    await _storage.delete(key: _userIdKey);
    await _storage.delete(key: _id_token);

    accessToken = null;
    refreshToken = null;
    role = null;
    username = null;
    userId = null;
    idToken = null;
  }

  bool _hasTokenExpired(String token) {
    try {
      return JwtDecoder.isExpired(token);
    } catch (e) {
      log(e.toString());
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
