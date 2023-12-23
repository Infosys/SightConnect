import 'dart:convert';

import 'package:eye_care_for_all/features/patient/patient_profile/domain/models/profile_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:openid_client/openid_client.dart';

class PersistentAuthData {
  final FlutterSecureStorage _storage;

  PersistentAuthData() : _storage = const FlutterSecureStorage();

  final String _accessKey = "accessToken";
  final String _refreshKey = "refreshToken";
  final String _roleKey = "role";
  final String _usernameKey = "username";
  final String _credentialKey = "credential";
  final String _userProfile = "userProfile";

  String? accessToken;
  String? refreshToken;
  String? role;
  String? username;
  bool get isLoggedIn => accessToken != null && refreshToken != null;

  Future<void> initialize() async {
    accessToken = await _storage.read(key: _accessKey);
    refreshToken = await _storage.read(key: _refreshKey);
    role = await _storage.read(key: _roleKey);
    username = await _storage.read(key: _usernameKey);
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
        (JwtDecoder.decode(accessToken)['realm_access']['roles'] as List).first;
    final username = JwtDecoder.decode(accessToken)['preferred_username'];

    await saveRoleAndUserName(role, username);
  }

  Future<void> saveCredential(Credential credential) async {
    await _storage.write(
      key: _credentialKey,
      value: jsonEncode(
        credential.toJson(),
      ),
    );
  }

  Future<void> saveUserProfile(PatientResponseModel user) async {
    await _storage.write(
      key: _userProfile,
      value: jsonEncode(
        user.toJson(),
      ),
    );
  }

  Future<PatientResponseModel?> getUserProfile() async {
    final String? userProfileJson = await _storage.read(key: _userProfile);
    if (userProfileJson != null) {
      return PatientResponseModel.fromJson(jsonDecode(userProfileJson));
    }
    return null;
  }

  Future<Credential?> getCredentials() async {
    final String? credentialJson = await _storage.read(key: _credentialKey);
    if (credentialJson != null) {
      return Credential.fromJson(jsonDecode(credentialJson));
    }
    return null;
  }

  Future<String?> getAccessToken() async {
    return await _storage.read(key: _accessKey);
  }

  Future<void> saveRoleAndUserName(String role, String username) async {
    this.role = role;
    this.username = username;
    await _storage.write(key: _roleKey, value: role);
    await _storage.write(key: _usernameKey, value: username);
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
    await _storage.delete(key: _credentialKey);
    await _storage.delete(key: _userProfile);
    accessToken = null;
    refreshToken = null;
    role = null;
    username = null;
  }

  bool _hasTokenExpired(String token) {
    return JwtDecoder.isExpired(token);
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
