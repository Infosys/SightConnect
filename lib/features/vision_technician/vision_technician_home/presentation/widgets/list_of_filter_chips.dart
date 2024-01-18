import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/custom_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ListOfFilterChips extends HookWidget {
  const ListOfFilterChips({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomChip(title: "ALL"),
        CustomChip(title: "URGENT"),
        CustomChip(title: "EARLY"),
        CustomChip(title: "ROUTINE"),
      ],
    );
  }
}
