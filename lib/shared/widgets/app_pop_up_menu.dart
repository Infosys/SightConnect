import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppPopUpMenu extends HookWidget {
  final List<String> items;
  final Function(String) onSelected;
  const AppPopUpMenu({
    required this.items,
    required this.onSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final selectedVal = useState<String?>(null);
    return PopupMenuButton<String>(
      icon: SvgPicture.asset(
        "assets/icons/accessability.svg",
        height: 32,
      ),
      initialValue: selectedVal.value,
      onSelected: (String item) {
        selectedVal.value = item;
        onSelected(item);
      },
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<String>>[
          ...items.map((String item) {
            return PopupMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ];
      },
    );
  }
}
