/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/presentation/widgets/custom_chip.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/vt_home_helper_provider.dart';

class ListOfFilterChips extends ConsumerWidget {
  const ListOfFilterChips({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(vtHomeHelperProvider);
    return SizedBox(
      height: Responsive.isMobile(context) ? 45 : 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...model.availableCategories.map((e) {
            return CustomChip(
              title: e,
              isSelected: model.category == e,
              onTap: (type) {
                model.updateCategory(type);
              },
            );
          }).toList(),
        ],
      ),
    );
  }
}
