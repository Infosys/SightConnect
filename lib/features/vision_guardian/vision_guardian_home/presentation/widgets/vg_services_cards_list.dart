import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_services_cards.dart';

import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/data/models/vg_service_items.dart';

class VisionGuardianServicesCardList extends StatelessWidget {
  const VisionGuardianServicesCardList({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    final services = VGServiceItems.getAll(loc);
    return SizedBox(
      width: Responsive.isMobile(context)
          ? AppSize.width(context) * 0.9
          : AppSize.width(context) * 0.95,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppSize.kmheight),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...services
                    .map(
                      (s) => VisionGuardianServicesCard(
                        service: s,
                      ),
                    )
                    .toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
