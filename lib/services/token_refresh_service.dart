import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var dioRefreshTokenProvider = Provider((ref) async {
  Future<void> refreshToken() async {
    logger.d("refreshToken called");
    final refreshToken = PersistentAuthStateService.authState.refreshToken;
    try {
      final tokens = await ref
          .read(initializationProvider)
          .refreshTokens(refreshToken: refreshToken!);
      log("newAccessToken: ${tokens!.accessToken}");
      log("newRefreshToken: ${tokens.refreshToken}");

      logger.d({
        "newAccessToken": tokens.accessToken,
        "newRefreshToken": tokens.refreshToken,
      });
      // update the tokens in the persistent storage
      await PersistentAuthStateService.authState
          .updateAccessToken(accessToken: tokens.accessToken);
      await PersistentAuthStateService.authState
          .updateRefreshToken(refreshToken: tokens.refreshToken);
      await PersistentAuthStateService.authState.saveTokens(
          accessToken: tokens.accessToken, refreshToken: tokens.refreshToken);
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  await refreshToken();
});
