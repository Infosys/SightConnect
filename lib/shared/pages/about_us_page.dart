/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    List<String> features = loc.aboutUsFeaturesDescription.split("|");
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(
          loc.appDrawerAboutUs,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                loc.aboutUsDescription,
                softWrap: true,
                style:
                    applyRobotoFont(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              const SizedBox(height: 20),
              Text(
                loc.aboutUsFeaturesTitle,
                softWrap: true,
                textAlign: TextAlign.left,
                style:
                    applyRobotoFont(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: features
                    .map(
                      (e) => Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                child: Icon(
                                  Icons.arrow_right,
                                ),
                              ),
                              Expanded(
                                flex: 9,
                                child: Text(
                                  e,
                                  softWrap: true,
                                  style: applyRobotoFont(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 10),
              Text(
                loc.aboutUsConclusion,
                softWrap: true,
                style:
                    applyRobotoFont(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
