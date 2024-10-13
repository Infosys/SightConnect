/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/api_constant.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

class MatomoLogger {
  MatomoLogger._();
  static const int siteId = 1;
  static String baseUrl = "${ApiConstant.baseUrl}/matomo/matomo.php";
  static Future<void> init() async {
    await MatomoTracker.instance.initialize(siteId: siteId, url: baseUrl);
  }

  static void setVisitorUserId(String? userId) {
    MatomoTracker.instance.setVisitorUserId(userId);
  }
}
