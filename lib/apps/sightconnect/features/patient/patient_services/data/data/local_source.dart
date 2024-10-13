/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import '../../../../../../../shared/constants/app_icon.dart';
import '../../domain/enum/mini_app.dart';

final MINIAPP_LOGO_MAPPER = {
  MiniApp.EYE_ASSESSMENT: AppIcon.triage,
  MiniApp.VISUAL_ACUITY_TEST: AppIcon.acuityTest,
  MiniApp.CATARACT_EYE_TEST: AppIcon.eyeScanner,
  MiniApp.RED_EYE_TEST: AppIcon.eyeScanner,
  MiniApp.APPOINTMENT: AppIcon.drawerAppoinments,
  MiniApp.IPLEDGE: AppIcon.pledge,
};
