import 'package:eye_care_for_all/core/services/shared_preference.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../main.dart';

final globalTenantProvider =
    ChangeNotifierProvider((ref) => GlobalTenantProvider());

class GlobalTenantProvider extends ChangeNotifier {
  int? _tenantId = SharedPreferenceService.getTenantId;
  int? _organizationId = SharedPreferenceService.getOrganizationId;
  // bool _isTenantSelection = false;

  int? _tenantIdVt = SharedPreferenceService.getTenantIdVt;
  int? _organizationIdVt = SharedPreferenceService.getOrganizationIdVt;

  GlobalTenantProvider();

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
    SharedPreferenceService.storeTenantIdVt = tenantIdVt!;
    logger.d('Tenant ID VT: $_tenantIdVt');
    notifyListeners();
  }

  void setOrganizationIdVt(int? organizationIdVt) {
    _organizationIdVt = organizationIdVt;
    SharedPreferenceService.storeOrganizationIdVt = organizationIdVt!;
    logger.d('Organization ID VT: $_organizationIdVt');
    notifyListeners();
  }

  void setTenantId(int? tenantId) {
    _tenantId = tenantId;
    SharedPreferenceService.storeTenantId = tenantId!;
    logger.d('Tenant ID: $_tenantId');
    notifyListeners();
  }

  void setOrganizationId(int? organizationId) {
    _organizationId = organizationId;
    SharedPreferenceService.storeOrganizationId = organizationId!;
    logger.d('Organization ID: $_organizationId');
    notifyListeners();
  }
}
