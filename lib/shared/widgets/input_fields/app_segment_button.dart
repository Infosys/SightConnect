import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppSegmentButton<T> extends HookWidget {
  const AppSegmentButton({
    super.key,
    required this.items,
    this.minWidth,
    this.maxWidth,
    this.initialValue,
    required this.onSelected,
  });

  final List<T> items;
  final double? minWidth;
  final double? maxWidth;
  final Function(T?) onSelected;
  final T? initialValue;

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final selectedValue = useState<T?>(initialValue);
    return Container(
      constraints: BoxConstraints(
        minWidth: minWidth ?? (isMobile ? AppSize.width(context) * 0.4 : 300),
        maxWidth: maxWidth ?? (isMobile ? AppSize.width(context) * 0.4 : 300),
      ),
      child: SegmentedButton(
        style: SegmentedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
          backgroundColor: Colors.white,
          side: const BorderSide(
            color: Colors.grey,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        segments: items
            .map((item) =>
                ButtonSegment(value: item, label: Text(item.toString())))
            .toList(),
        selected: {selectedValue.value},
        selectedIcon: const Icon(Icons.check),
        onSelectionChanged: (value) {
          selectedValue.value = value.first;
          onSelected(value.first);
        },
      ),
    );
  }
}
