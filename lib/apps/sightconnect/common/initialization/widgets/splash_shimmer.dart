/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/pages/pulsar_effect_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/widgets/app_upgrader.dart';
import 'package:flutter/material.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

class SplashShimmer extends StatelessWidget {
  const SplashShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return AppUpgrader(
      child: TraceableWidget(
        actionName: "InitializationPage",
        path: InitializationPage.routeName,
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Image.asset(
                  'assets/logo/splash_bg.png',
                  fit: BoxFit.fill,
                ),
              ),
              Pulsar(
                child: Center(
                  child: Image.asset(
                    "assets/logo/splash_icon_transparant.png",
                    width: Responsive.isMobile(context)
                        ? AppSize.width(context) * 0.3
                        : AppSize.width(context) * 0.1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
