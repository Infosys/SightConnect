import 'dart:ui';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/auth/presentation/provider/user_details_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_home/modals/member_selection.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/campaigns_list.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/good_to_know_list.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/eye_camps_card_list.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/helpline_card.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/invite_others_card.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/my_connections_list.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/nearby_vision_centers_list.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/patient_header.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/priority_notification_list.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/my_recent_services_card_list.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientHomePage extends ConsumerWidget {
  const PatientHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        flexibleSpace: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white.withAlpha(350),
        title: Row(
          children: [
            SvgPicture.asset(AppIcon.logo),
            const SizedBox(width: AppSize.kmwidth),
            const Text(
              "Eye Care for All",
            ),
          ],
        ),
        actions: [
          InkWell(
            customBorder: const CircleBorder(),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => const MemberSelectionPopUp(),
                barrierDismissible: false,
                barrierColor: AppColor.blackOpacity,
              );
            },
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 24,
                  width: 62,
                  padding: const EdgeInsets.all(4),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: const Icon(
                    CupertinoIcons.chevron_down,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Consumer(
                      builder: (context, ref, child) {
                        var user = ref.watch(userDetailsProvider).userProfile;

                        return CircleAvatar(
                          radius: 18,
                          backgroundImage:
                              AssetImage(user!.profile!.patient!.profilePhoto!),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: AppSize.kmwidth),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: AppSize.height(context) * 0.16),
              const PatientHeader(),
              const SizedBox(height: AppSize.kmheight),
              const PriorityNotificationList(),
              const SizedBox(height: AppSize.kmheight),
              const MyConnectionsList(),
              const SizedBox(height: AppSize.kmheight),
              const RecentServicesCardList(),
              const SizedBox(height: AppSize.kmheight),
              const NearbyVisionCentersList(),
              const SizedBox(height: AppSize.kmheight),
              const HelplineCard(),
              const SizedBox(height: AppSize.kmheight),
              const InviteCard(),
              const EyeCampsCardList(),
              const SizedBox(height: AppSize.kmheight),
              const GoodToKnowCardList(),
              const SizedBox(height: AppSize.kmheight),
              const CampaginsList(),
              const SizedBox(height: AppSize.klheight * 4),
            ],
          ),
        ),
      ),
    );
  }
}
