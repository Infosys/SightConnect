import 'dart:io';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openid_client/openid_client_io.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:openid_client/openid_client_io.dart' as io;

final authProvider = ChangeNotifierProvider((ref) {
  return InitializationPageProvider();
});

class InitializationPageProvider extends ChangeNotifier {
  // final String keycloakUri = '${AppEnv.baseKeycloakUrl}/auth/realms/care';
  final String keycloakUri =
      'https://campaigns.infosysapps.com/auth2/realms/care';
  final String _redirectUrl = 'com.infosys.eyecareforall://';
  static const List<String> scopes = ['profile'];
  static const String clientId = 'microservices';
  static const int PORT = 4000;
  Credential? credential;

  InitializationPageProvider();

  Future<void> init() async {
    try {
      Client client = await _getClient();
      credential = await _authenticate(client, scopes: scopes);
      await save(credential!);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> save(Credential credential) async {
    final response = await credential.getTokenResponse();
    await PersistentAuthStateService.authState.saveTokens(
      accessToken: response.accessToken!,
      refreshToken: response.refreshToken!,
    );
    notifyListeners();
  }

  Future<void> logout() async {
    final url = credential?.generateLogoutUrl();
    await PersistentAuthStateService.authState.logout();
    await launchUrl(url!);
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

  getUserProfile() {}
}
