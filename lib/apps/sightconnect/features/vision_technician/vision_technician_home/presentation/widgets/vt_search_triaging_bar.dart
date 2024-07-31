import 'package:eye_care_for_all/apps/sightconnect/core/providers/global_vt_availibility_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/core/providers/global_vt_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_profile/presentation/pages/vt_profile_page.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_images.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/pages/pulsar_effect_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VTHomeSearchBar extends ConsumerWidget {
  const VTHomeSearchBar({
    super.key,
    required this.onPressed,
    required this.onProfile,
  });
  final VoidCallback onPressed;
  final VoidCallback onProfile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMobile = Responsive.isMobile(context);

    return Row(
      children: [
        const SizedBox(width: AppSize.ks),
        Image.asset(
          AppImages.logo,
          width: Responsive.isMobile(context) ? 150 : 210,
          colorBlendMode: BlendMode.srcIn,
          color: AppColor.white,
        ),
        isMobile ? const Spacer() : const SizedBox(width: AppSize.ks),
        isMobile
            ? IconButton(
                onPressed: onPressed,
                icon: const Icon(
                  Icons.search,
                  color: AppColor.white,
                ),
              )
            : Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: InkWell(
                    onTap: onPressed,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.search,
                            color: AppColor.primary,
                          ),
                          const SizedBox(width: 8),
                          Flexible(
                            child: Text(
                              "Search by name, mobile number, or assessment ID",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: applyRobotoFont(
                                fontSize: 14,
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const VTProfilePage(),
              ),
            );
          },
          child: Consumer(
            builder: (_, ref, __) {
              final model = ref.watch(globalVTAvailabilityProvider);
              return Badge(
                offset: Offset(isMobile ? -1 : -4, 0),
                backgroundColor: Colors.transparent,
                label: Pulsar(
                  child: Container(
                    padding: EdgeInsets.all(isMobile ? 6 : 8),
                    decoration: BoxDecoration(
                      color: model.isAvailable
                          ? AppColor.altGreen
                          : AppColor.darkGrey,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                child: AppNameAvatar(
                  name: ref.read(globalVTProvider).name,
                  radius: isMobile ? 20 : 24,
                  fontSize: isMobile ? 16 : 20,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
