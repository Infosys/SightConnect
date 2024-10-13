/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GlobalVTAvailabilityProvider extends ChangeNotifier {
  bool _isAvailable = false;
  bool _isTemporarilyAvailable = false;

  bool get isAvailable => _isAvailable;
  bool get isTemporarilyAvailable => _isTemporarilyAvailable;

  void setAvailability(bool isAvailable) {
    _isAvailable = isAvailable;
    notifyListeners();
  }

  void setTemporarilyAvailable(bool isTemporarilyUnavailable) {
    _isTemporarilyAvailable = isTemporarilyUnavailable;
    notifyListeners();
  }
}

final globalVTAvailabilityProvider = ChangeNotifierProvider(
  (ref) => GlobalVTAvailabilityProvider(),
);
