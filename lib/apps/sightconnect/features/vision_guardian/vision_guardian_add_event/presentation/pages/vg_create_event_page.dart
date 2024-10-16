/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_add_event_details_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_list_details.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_search.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../services/persistent_auth_service.dart';
import '../../../../../../../shared/constants/app_color.dart';
import '../../../../../../../shared/constants/app_size.dart';
import '../widgets/vg_event_heder_chips.dart';

class VisionGuardianEventPage extends HookConsumerWidget {
  const VisionGuardianEventPage({super.key});

  final eventStatus = const ["ALL", "CURRENT", "UPCOMING", "PAST", "CANCELLED"];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isSelected = useState<int>(0);
    final loc = context.loc!;
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(loc.vgEvent),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              ref.read(addEventDetailsProvider).resetSearchEventList();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VisionGuardianSearchEvent(
                    search: "event",
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.search,
              color: AppColor.grey,
            ),
          ),
        ],
        leadingIcon: InkWell(
          onTap: () {
            ref.read(addEventDetailsProvider).resetPagination();
            ref.read(addEventDetailsProvider).filterListEvents(0, "");
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          child: const Icon(
            Icons.chevron_left,
            size: 35,
          ),
        ),
      ),
      floatingActionButton: _enableFloatingButton()
          ? InkWell(
              onTap: () {
                ref.read(addEventDetailsProvider).setIsLoading();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VGAddEventDetailsPage(),
                  ),
                );
              },
              child: Container(
                width: AppSize.width(context) * 0.35,
                height: AppSize.height(context) * 0.06,
                padding: const EdgeInsets.only(bottom: AppSize.ks - 1),
                margin: const EdgeInsets.only(bottom: AppSize.kl),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.yellow,
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                      color: AppColor.grey,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: '+ ',
                          style: applyRobotoFont(
                              fontSize: 24,
                              color: AppColor.black,
                              fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                          text: loc.vgAddEvent,
                          style: applyRobotoFont(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          : null,
      body: SingleChildScrollView(
        controller: ref.watch(addEventDetailsProvider).eventListController,
        child: Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                vgEventHeaderChips(isSelected, context, eventStatus),
                const SizedBox(height: AppSize.kl),
                const VisionEventListDetails(
                  eventType: 'viewAll',
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  bool _enableFloatingButton() {
    final permissions = PersistentAuthStateService.authState.permissions;
    logger.f(permissions);
    if (permissions != null &&
        permissions.isNotEmpty &&
        permissions.contains("EVENT_CREATOR")) {
      return true;
    } else {
      return false;
    }
  }
}
