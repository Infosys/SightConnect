import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/custom_chip.dart';
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
          CustomChip(
            title: "ALL",
            isSelected: model.category == "ALL",
            onTap: (type) {
              model.updateCategory(type);
            },
          ),
          CustomChip(
            title: "URGENT",
            isSelected: model.category == "URGENT",
            onTap: (type) {
              model.updateCategory(type);
            },
          ),
          CustomChip(
            title: "EARLY",
            isSelected: model.category == "EARLY",
            onTap: (type) {
              model.updateCategory(type);
            },
          ),
          CustomChip(
            title: "ROUTINE",
            isSelected: model.category == "ROUTINE",
            onTap: (type) {
              model.updateCategory(type);
            },
          ),
        ],
      ),
    );
  }
}
