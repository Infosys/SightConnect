import 'package:eye_care_for_all/core/providers/global_optometrician_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/optometrician_dashboard_model.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/contract/optometrician_dashboard_repository.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/repositories/optometrician_dashboard_repository_impl.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var optometricianDashboardProvider =
    ChangeNotifierProvider<OptometricianDashboardProvider>(
  (ref) => OptometricianDashboardProvider(
    ref,
    ref.watch(optometricianDashboardRepositoryProvider),
  ),
);

class OptometricianDashboardProvider extends ChangeNotifier {
  final Ref _ref;

  final OptometricianDashboardRepository _optometricianDashboardRepository;

  OptometricianDashboardProvider(
      this._ref, this._optometricianDashboardRepository) {
    getOptometricianDashboard(
      _ref.read(globalOptometricianProvider).preferredUsername!,
    );
  }

  bool _isLoading = false;
  OptometricianDashboardModel _optometricianDashboardModel =
      const OptometricianDashboardModel();

  // ignore: unnecessary_getters_setters
  OptometricianDashboardModel get optometricianDashboard =>
      _optometricianDashboardModel;

  set optometricianDashboard(OptometricianDashboardModel value) =>
      _optometricianDashboardModel = value;

  // ignore: unnecessary_getters_setters
  bool get isLoading => _isLoading;

  set isLoading(bool value) => _isLoading = value;

  Future<void> getOptometricianDashboard(String capturedBy) async {
    _isLoading = true;
    notifyListeners();

    var result = await _optometricianDashboardRepository
        .getOptometricianDashboard(capturedBy);
    result.fold((failure) {
      logger.e(failure);
      _isLoading = false;
      notifyListeners();
    }, (result) {
      logger.d("Optometrician Dashboard: $result");
      _optometricianDashboardModel = result;
      _isLoading = false;
      notifyListeners();
    });
  }
}
