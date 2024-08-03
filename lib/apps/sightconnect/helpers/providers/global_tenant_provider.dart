import 'package:eye_care_for_all/services/shared_preference.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../main.dart';

final globalTenantProvider =
    ChangeNotifierProvider((ref) => GlobalTenantProvider());

class GlobalTenantProvider extends ChangeNotifier {
  int? _tenantId;
  int? _organizationId;
  int? _tenantIdVt;
  int? _organizationIdVt;

  GlobalTenantProvider() {
    _tenantId = SharedPreferenceService.getTenantId;
    _organizationId = SharedPreferenceService.getOrganizationId;
    _tenantIdVt = SharedPreferenceService.getTenantIdVt;
    _organizationIdVt = SharedPreferenceService.getOrganizationIdVt;
  }

  int? get tenantId => _tenantId;
  int? get organizationId => _organizationId;

  int? get tenantIdVt => _tenantIdVt;
  int? get organizationIdVt => _organizationIdVt;
  // bool get isTenantSelection => _isTenantSelection;

  // void setIsTenantSelection(bool isTenantSelection) {
  //   _isTenantSelection = isTenantSelection;
  //   logger.d('Is Tenant Selection: $_isTenantSelection');
  //   notifyListeners();
  // }

  void setTenantIdVt(int? tenantIdVt) {
    _tenantIdVt = tenantIdVt;
    SharedPreferenceService.storeTenantIdVt(tenantIdVt!);
    logger.d('Tenant ID VT: $_tenantIdVt');
    notifyListeners();
  }

  void setOrganizationIdVt(int? organizationIdVt) {
    _organizationIdVt = organizationIdVt;
    SharedPreferenceService.storeOrganizationIdVt(organizationIdVt!);
    logger.d('Organization ID VT: $_organizationIdVt');
    notifyListeners();
  }

  void setTenantId(int? tenantId) {
    _tenantId = tenantId;
    SharedPreferenceService.storeTenantId(tenantId!);
    logger.d('Tenant ID: $_tenantId');
    notifyListeners();
  }

  void setOrganizationId(int? organizationId) {
    _organizationId = organizationId;
    SharedPreferenceService.storeOrganizationId(organizationId!);
    logger.d('Organization ID: $_organizationId');
    notifyListeners();
  }

  int? getTenantId(String? activeRole) {
    if (activeRole == null || activeRole.isEmpty) {
      return null;
    }
    if (activeRole == "ROLE_VISION_TECHNICIAN") {
      logger.d("changing tenant based on Role = VT");
      return SharedPreferenceService.getTenantIdVt;
    } else if (activeRole == "ROLE_PATIENT" || activeRole == "ROLE_VOLUNTEER") {
      logger.d("changing tenant based on Role = Patient");
      return SharedPreferenceService.getTenantId;
    }

    return null;
  }

  int? getOrganizationId(String? activeRole) {
    if (activeRole == null || activeRole.isEmpty) {
      return null;
    }
    if (activeRole == "ROLE_VISION_TECHNICIAN") {
      return SharedPreferenceService.getOrganizationIdVt;
    } else if (activeRole == "ROLE_PATIENT" || activeRole == "ROLE_VOLUNTEER") {
      return SharedPreferenceService.getOrganizationId;
    }
    return null;
  }
}
