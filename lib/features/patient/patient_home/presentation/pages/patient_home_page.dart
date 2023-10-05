import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
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
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientHomePage extends ConsumerWidget {
  const PatientHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iconProviderstate = ref.watch(iconProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Eye Care for All",
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
                  width: 65,
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
                      builder:
                          (BuildContext context, WidgetRef ref, Widget? child) {
                        return CircleAvatar(
                          radius: 18,
                          backgroundImage: iconProviderstate.myString == ""
                              ? const AssetImage(
                                  'assets/images/profile_image.png')
                              : AssetImage(iconProviderstate.myString),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: AppSize.kmwidth,
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: Responsive.isMobile(context)
                ? const EdgeInsets.all(AppSize.kmpadding)
                : const EdgeInsets.all(AppSize.klpadding),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                PatientHeader(),
                SizedBox(height: AppSize.kmheight),
                PriorityNotificationList(),
                SizedBox(height: AppSize.kmheight),
                MyConnectionsList(),
                SizedBox(height: AppSize.kmheight),
                RecentServicesCardList(),
                SizedBox(height: AppSize.kmheight),
                NearbyVisionCentersList(),
                SizedBox(height: AppSize.kmheight),
                HelplineCard(),
                SizedBox(height: AppSize.kmheight),
                InviteCard(),
                EyeCampsCardList(),
                SizedBox(height: AppSize.kmheight),
                GoodToKnowCardList(),
                SizedBox(height: AppSize.kmheight),
                CampaginsList(),
                SizedBox(height: AppSize.klheight * 4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
