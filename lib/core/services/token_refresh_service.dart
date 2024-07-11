import 'dart:developer';

import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var dioRefreshTokenProvider = Provider((ref) async {
  Future<void> refreshToken() async {
    final refreshToken = PersistentAuthStateService.authState.refreshToken;
    final tokens = await ref
        .read(initializationProvider)
        .refreshTokens(refreshToken: refreshToken!);

    log("newAccessToken: ${tokens!.accessToken}");
    log("newRefreshToken: ${tokens.refreshToken}");

    logger.d({
      "newAccessToken": tokens!.accessToken,
      "newRefreshToken": tokens.refreshToken,
    });
    // update the tokens in the persistent storage
    await PersistentAuthStateService.authState
        .updateAccessToken(accessToken: tokens.accessToken);
    await PersistentAuthStateService.authState
        .updateRefreshToken(refreshToken: tokens.refreshToken);
    await PersistentAuthStateService.authState.saveTokens(
        accessToken: tokens.accessToken, refreshToken: tokens.refreshToken);
  }

   await refreshToken();
});