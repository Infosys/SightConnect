import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TextScalePopupMenu extends StatelessWidget {
  const TextScalePopupMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final model = ref.watch(globalTextScaleFactorProvider);
        return PopupMenuButton<double>(
          icon: SvgPicture.asset(
            "assets/icons/accessability.svg",
            fit: BoxFit.cover,
            height: 50,
            width: 55,
          ),
          initialValue: model.textScaleFactor,
          onSelected: (value) async {
            await model.setTextScaleFactor(value);
          },
          itemBuilder: (context) {
            return [
              const PopupMenuItem(
                value: 0.8,
                child: Text('-A'),
              ),
              const PopupMenuItem(
                value: 1,
                child: Text('A'),
              ),
              const PopupMenuItem(
                value: 1.2,
                child: Text('+A'),
              ),
            ];
          },
        );
      },
    );
  }
}
