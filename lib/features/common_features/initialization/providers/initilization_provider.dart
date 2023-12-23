import 'dart:io';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/services/network_info.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/data/repositories/patient_authentication_repository_impl.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/domain/models/profile_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openid_client/openid_client_io.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:openid_client/openid_client_io.dart' as io;

final initializationProvider = ChangeNotifierProvider((ref) {
  return InitializationPageProvider(ref);
});

class InitializationPageProvider extends ChangeNotifier {
  final String keycloakUri =
      'https://masterapp-dev.infosysapps.com/auth/realms/care/';
  // final String keycloakUri =
  //     'https://campaigns.infosysapps.com/auth2/realms/care';
  static const List<String> scopes = ['profile'];
  static const String clientId = 'microservices';
  static const int PORT = 4000;
  final Ref _ref;
  Credential? credential;

  InitializationPageProvider(this._ref);

  Future<void> init() async {
    try {
      Client client = await _getClient();
      credential = await _authenticate(client, scopes: scopes);
      await _saveCredential(credential!);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _saveCredential(Credential credential) async {
    await PersistentAuthStateService.authState.saveCredential(credential);
    final tokens = await credential.getTokenResponse();
    await PersistentAuthStateService.authState.saveTokens(
      accessToken: tokens.accessToken!,
      refreshToken: tokens.refreshToken!,
    );
    notifyListeners();
  }

  Future<UserInfo> getKeycloakProfile() async {
    final cred = await PersistentAuthStateService.authState.getCredentials();
    if (cred == null) return Future.error("No credentials found");
    final profile = await cred.getUserInfo();
    return profile;
  }

  Future<PatientResponseModel> getUserProfile() async {
    final phone = PersistentAuthStateService.authState.username;
    if (phone == null) {
      throw ServerFailure(errorMessage: "No phone number found");
    }
    final response = await _ref
        .read(patientAuthenticationRepositoryProvider)
        .getPatientProfileByPhone(phone);
    return response.fold((failure) => throw failure, (result) => result);
  }

  Future<void> logout() async {
    final cred = await PersistentAuthStateService.authState.getCredentials();
    if (cred == null) throw ServerFailure(errorMessage: "No credentials found");
    if (cred.generateLogoutUrl() == null) {
      throw ServerFailure(errorMessage: "No logout url found");
    }
    final isConnected = await _ref.read(connectivityProvider).isConnected();
    if (isConnected) {
      try {
        await PersistentAuthStateService.authState.logout();
        final logoutUrl = cred.generateLogoutUrl();
        await launchUrl(logoutUrl!);
      } catch (e) {
        rethrow;
      }
    } else {
      throw ServerFailure(errorMessage: "Cannot logout without internet");
    }
  }

  Future<Client> _getClient() async {
    try {
      Uri uri = Uri.parse(keycloakUri);
      Issuer issuer = await Issuer.discover(uri);
      return Client(issuer, clientId);
    } catch (e) {
      rethrow;
    }
  }

  Future<Credential> _authenticate(
    Client client, {
    List<String> scopes = const [],
  }) async {
    try {
      // Creates an authenticator
      Authenticator authenticator = io.Authenticator(
        client,
        scopes: scopes,
        port: PORT,
        urlLancher: urlLauncher,
      );

      // Starts the authentication
      Credential crendentials = await authenticator.authorize();

      // Close the webview when finished
      if (Platform.isAndroid || Platform.isIOS) {
        closeInAppWebView();
      }

      return crendentials;
    } catch (e) {
      rethrow;
    }
  }

  urlLauncher(String url) async {
    var uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
    )) {
      throw 'Could not launch $url';
    }
  }
}
