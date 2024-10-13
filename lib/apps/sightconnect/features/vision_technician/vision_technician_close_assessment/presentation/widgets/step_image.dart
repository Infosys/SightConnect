/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StepImage extends ConsumerWidget {
  const StepImage({super.key, required this.eye});
  final String eye;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Image.asset(
      "assets/images/vt_${eye}_eye.png",
      height: 32,
    );
  }
}
