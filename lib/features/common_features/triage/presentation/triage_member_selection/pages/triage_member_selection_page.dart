import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity/features/distance_visual_acuity_tumbling/presentation/providers/distance_visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/pages/triage_page.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity/features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

import '../../providers/triage_provider.dart';
import '../providers/triage_member_provider.dart';
import '../widget/change_member_tiles.dart';

class TriageMemberSelectionPage extends StatelessWidget {
  const TriageMemberSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;

    return TraceableWidget(
      actionName: 'TriageMember Selection Page',
      child: DraggableScrollableSheet(
        initialChildSize: 0.5,
        minChildSize: 0.5,
        maxChildSize: 0.9,
        builder: (context, controller) {
          return ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Scaffold(
              backgroundColor: Colors.white,
              bottomNavigationBar: BottomAppBar(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.km,
                ),
                child: Consumer(
                  builder: (context, ref, child) {
                    final model = ref.watch(triageMemberProvider);
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: AppSize.km,
                      ),
                      width: AppSize.width(context) * 0.8,
                      child: ElevatedButton(
                        onPressed: model.testPatientId == null
                            ? null
                            : () {
                                ref.read(resetProvider).reset();
                            
                                
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const TriagePage(),
                                  ),
                                );
                              },
                        child: Text(loc.proceedButton),
                      ),
                    );
                  },
                ),
              ),
              body: SingleChildScrollView(
                controller: controller,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSize.km,
                    vertical: AppSize.km,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 4,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            loc.memberSelection,
                            style: applyFiraSansFont(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Icons.cancel),
                          )
                        ],
                      ),
                      const ChangeMemberTiles(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
