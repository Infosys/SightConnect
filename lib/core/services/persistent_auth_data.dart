import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class PersistentAuthData {
  final FlutterSecureStorage _storage;

  PersistentAuthData() : _storage = const FlutterSecureStorage();

  final String _accessKey = "accessToken";
  final String _refreshKey = "refreshToken";
  final String _roleKey = "role";
  String? accessToken;
  String? refreshToken;
  String? role;
  bool get isLoggedIn => accessToken != null && refreshToken != null;

  Future<void> initialize() async {
    accessToken = await _storage.read(key: _accessKey);
    refreshToken = await _storage.read(key: _refreshKey);
    role = await _storage.read(key: _roleKey);
  }

  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    this.accessToken = accessToken;
    this.refreshToken = refreshToken;
    await _storage.write(key: _accessKey, value: accessToken);
    await _storage.write(key: _refreshKey, value: refreshToken);
  }

  Future<String?> getAccessToken() async {
    return await _storage.read(key: _accessKey);
  }

  Future<void> saveRole(String role) async {
    this.role = role;
    await _storage.write(key: _roleKey, value: role);
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
