import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final globalTenantProvider =
    ChangeNotifierProvider((ref) => GlobalTenantProvider());

class GlobalTenantProvider extends ChangeNotifier {
  int? _tenantId;
  int? _organizationId;

  GlobalTenantProvider();

  int? get tenantId => _tenantId;
  int? get organizationId => _organizationId;

  void setTenantId(int? tenantId) {
    _tenantId = tenantId;
    notifyListeners();
  }

  void setOrganizationId(int? organizationId) {
    _organizationId = organizationId;
    notifyListeners();
  }
}
