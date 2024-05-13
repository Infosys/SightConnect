import 'package:eye_care_for_all/features/technician/data/fake_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TechnicianHomeFilterTabs extends HookConsumerWidget {
  const TechnicianHomeFilterTabs({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isSelected = useState<int>(-1);
    return Row(
      children: [
        for (var i = 0; i < TechnicianFakeDataSource.filterType.length; i++)
          GestureDetector(
            onTap: () {
              isSelected.value = i;
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: isSelected.value == i ? Colors.blue : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                TechnicianFakeDataSource.filterType[i],
                style: TextStyle(
                  color: isSelected.value == i ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
