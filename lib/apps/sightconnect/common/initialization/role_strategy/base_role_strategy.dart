/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/app_consent_form.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/referral/presentation/modals/referral_collect_sheet.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

sealed class RoleStrategy {
  Future<bool> initializeNewUser(NavigatorState navigator);
  Future<bool> initializeExistingUser(NavigatorState navigator);
  Future<bool> checkConsent(NavigatorState navigator);
  Future<bool> checkReferral(NavigatorState navigator);
  Future<bool> registerUser(NavigatorState navigator);
}

abstract class BaseRoleStrategy implements RoleStrategy {
  final WidgetRef ref;

  BaseRoleStrategy(this.ref);

  @override
  Future<bool> initializeNewUser(NavigatorState navigator) async {
    try {
      final isConsentAccepted = await checkConsent(navigator);
      if (isConsentAccepted) {
        final isReferralAccepted = await checkReferral(navigator);
        if (isReferralAccepted) {
          await registerUser(navigator);
          return true;
        }
      }
      return false;
    } catch (e) {
      debugPrint('Error in initializeNewUser: $e');
      return false;
    }
  }

  @override
  Future<bool> initializeExistingUser(NavigatorState navigator) async {
    try {
      final isConsentAccepted = await checkConsent(navigator);
      return isConsentAccepted;
    } catch (e) {
      debugPrint('Error in initializeExistingUser: $e');
      return false;
    }
  }

  @override
  Future<bool> checkConsent(NavigatorState navigator) async {
    try {
      bool isConsentAccepted = await checkConsentStatus(ref, navigator);
      return isConsentAccepted;
    } catch (e) {
      debugPrint('Error in checkConsent: $e');
      return false;
    }
  }

  @override
  Future<bool> checkReferral(NavigatorState navigator) {
    return Future.value(true);
  }

  @override
  Future<bool> registerUser(NavigatorState navigator) {
    return Future.value(true);
  }

  Future<bool> checkConsentStatus(
      WidgetRef ref, NavigatorState navigator) async {
    final model = ref.read(initializationProvider);
    bool isConsentAccepted = await model.getConsentStatus();

    if (!isConsentAccepted) {
      isConsentAccepted =
          await UserInteractionHandler.showConsentForm(navigator) ?? false;
    }

    return isConsentAccepted;
  }
}

class UserInteractionHandler {
  UserInteractionHandler._();

  static Future<bool?> showReferralCollectSheet(BuildContext context) async {
    try {
      return await showModalBottomSheet<bool>(
        context: context,
        isScrollControlled: true,
        isDismissible: false,
        builder: (context) {
          return const ReferralCollectSheet();
        },
      );
    } catch (e) {
      debugPrint('Error in showReferralCollectSheet: $e');
      return null;
    }
  }

  static Future<bool?> showConsentForm(NavigatorState navigator) async {
    try {
      return await navigator.push<bool?>(
        MaterialPageRoute(
          builder: (context) {
            return const AppConsentFormPage();
          },
        ),
      );
    } catch (e) {
      debugPrint('Error in showConsentForm: $e');
      return null;
    }
  }
}
