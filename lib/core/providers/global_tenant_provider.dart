import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../main.dart';

final globalTenantProvider =
    ChangeNotifierProvider((ref) => GlobalTenantProvider());

class GlobalTenantProvider extends ChangeNotifier {
  int? _tenantId;
  int? _organizationId;
  bool _isTenantSelection = false;

  GlobalTenantProvider();

  int? get tenantId => _tenantId;
  int? get organizationId => _organizationId;
  bool get isTenantSelection => _isTenantSelection;

  void setIsTenantSelection(bool isTenantSelection) {
    _isTenantSelection = isTenantSelection;
    logger.d('Is Tenant Selection: $_isTenantSelection');
    notifyListeners();
  }

  void setTenantId(int? tenantId) {
    _tenantId = tenantId;
    logger.d('Tenant ID: $_tenantId');
    notifyListeners();
  }

  void setOrganizationId(int? organizationId) {
    _organizationId = organizationId;
    logger.d('Organization ID: $_organizationId');
    notifyListeners();
  }
}
