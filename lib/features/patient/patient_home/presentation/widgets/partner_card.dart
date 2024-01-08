import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PartnerCard extends StatelessWidget {
  const PartnerCard({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                loc.partner,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          FractionallySizedBox(
            widthFactor: 0.9,
            child: Card(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SvgPicture.asset(AppImages.lvpeiLogo),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                loc.poweredBy,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(width: 4),
              Text(
                loc.healthConnect,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
