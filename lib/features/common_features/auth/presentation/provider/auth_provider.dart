import 'dart:io';
import 'package:eye_care_for_all/features/common_features/auth/data/models/user_profile.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openid_client/openid_client.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:openid_client/openid_client_io.dart' as io;

var authProvider = ChangeNotifierProvider((ref) => AuthPageProvider());

class AuthPageProvider extends ChangeNotifier {
  static const keycloakUri = 'http://localhost:8080/realms/test';
  static const scopes = ['profile'];
  late Client client;
  late Credential? credential;
  late UserInfo? userInfo;
  AuthPageProvider() {
    // init();
  }

  init() async {
    client = await getClient();
    credential = await authenticate(client, scopes: scopes);
    userInfo = await credential!.getUserInfo();

    var tokenResponse = await credential!.getTokenResponse();
    logger.d(tokenResponse.toJson());
    notifyListeners();
  }

  Future<Client> getClient() async {
    var uri = Uri.parse(keycloakUri);
    if (!kIsWeb && Platform.isAndroid) uri = uri.replace(host: '10.0.2.2');
    var clientId = 'android-app';
    var issuer = await Issuer.discover(uri);
    return Client(issuer, clientId);
  }

  Future<Credential> authenticate(
    Client client, {
    List<String> scopes = const [],
  }) async {
    // create an authenticator
    var authenticator = io.Authenticator(
      client,
      scopes: scopes,
      port: 4000,
      urlLancher: urlLauncher,
    );

    // starts the authentication
    var crendentials = await authenticator.authorize();

    // close the webview when finished
    if (Platform.isAndroid || Platform.isIOS) {
      closeInAppWebView();
    }

    return crendentials;
  }

  Future<Credential?> getRedirectResult(
    Client client, {
    List<String> scopes = const [],
  }) async {
    return null;
  }

  urlLauncher(String url) async {
    var uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }
}
