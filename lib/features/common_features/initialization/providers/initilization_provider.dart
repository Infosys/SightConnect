import 'dart:developer';
import 'dart:io';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/services/network_info.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/data/repositories/patient_authentication_repository_impl.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/domain/models/profile_model.dart';
import 'package:eye_care_for_all/main.dart';
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
      'https://eyecare4all-dev.infosysapps.com/auth/realms/care';
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
      logger.e(e);
      rethrow;
    }
  }

  //This method is storing credential, accessToken, refreshToken, role, username in local.
  Future<void> _saveCredential(Credential credential) async {
    logger.d("Saving credential: $credential");
    await PersistentAuthStateService.authState.saveCredential(credential);
    notifyListeners();
  }

  Future<PatientResponseModel> getUserProfile() async {
    final phone = PersistentAuthStateService.authState.username;
    if (phone == null) {
      throw ServerFailure(errorMessage: "No phone number found");
    }
    final response = await _ref
        .read(patientAuthenticationRepositoryProvider)
        .getPatientProfileByPhone(phone);

    return response.fold((failure) {
      throw failure;
    }, (result) async {
      await PersistentAuthStateService.authState
          .saveUserProfileId(result.profile!.patient!.patientId.toString());
      return result;
    });
  }

  Future<void> logout() async {
    final cred = PersistentAuthStateService.authState.credential;
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
      throw ServerFailure(errorMessage: "No internet connection found");
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
    logger.f("URL$uri");
    if (!await launchUrl(
      uri,
    )) {
      throw 'Could not launch $url';
    }
  }
}
