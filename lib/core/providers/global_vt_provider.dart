import 'dart:developer';

import 'package:eye_care_for_all/core/providers/global_tenant_provider.dart';
import 'package:eye_care_for_all/core/providers/global_vt_availibility_provider.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/core/services/shared_preference.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/data/model/vt_profile_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/data/repositories/vt_authentication_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../main.dart';

var globalVTProvider = ChangeNotifierProvider((ref) => GlobalVTProvider());

class GlobalVTProvider extends ChangeNotifier {
  VtProfileModel? _user;
  bool get isVtAvailable => _user!.availableForTeleconsultation ?? false;

  VtProfileModel? get user => _user;
  String get name => _user!.personalInformation!.firstName!;
  int get userId => _user!.id!;

  void setUser(VtProfileModel parentUser) {
    _user = parentUser;
    notifyListeners();
    // logger.d(_user?.toJson());
  }
}

var getVTProfileProvider = FutureProvider.autoDispose(
  (ref) async {
    final mobile = PersistentAuthStateService.authState.username;
    if (mobile == null) {
      throw Exception("Mobile number not found");
    }
    final response =
        await ref.read(vtAuthenticationRepositoryProvider).getVtProfile(mobile);

    return response.fold(
      (error) {
        throw error;
      },
      (result) {
        log("VT Profile: $result");
        final profile = result.first;
        var tenant = ref.read(globalTenantProvider);
        if (tenant.organizationIdVt == null && tenant.tenantIdVt == null) {
          tenant.setOrganizationIdVt(
              profile.practiceGrants!.first.organization!.id!);
          tenant.setTenantIdVt(
              profile.practiceGrants!.first.organization!.tenant!.id!);
        }
        // SharedPreferenceService.storeOrganizationIdVt= profile.practiceGrants!.first.organization!.id!;
        // SharedPreferenceService.storeTenantIdVt = profile.practiceGrants!.first.organization!.tenant!.id!;
        logger.d(
            "values after setting - ${SharedPreferenceService.getOrganizationIdVt} - ${SharedPreferenceService.getTenantIdVt}");
        ref.read(globalVTProvider).setUser(profile);
        ref
            .read(globalVTAvailabilityProvider)
            .setAvailability(profile.availableForTeleconsultation ?? false);
        return profile;
      },
    );
  },
);
