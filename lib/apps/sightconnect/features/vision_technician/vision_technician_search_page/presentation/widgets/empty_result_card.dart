/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

class EmptyResultCard extends StatelessWidget {
  const EmptyResultCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.loc!.emptyPatientsInfo,
        textAlign: TextAlign.center,
      ),
    );
  }
}
