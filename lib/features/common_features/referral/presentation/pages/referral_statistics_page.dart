import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/referral/data/models/referral_response_model.dart';
import 'package:eye_care_for_all/features/common_features/referral/data/repository/referral_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/referral/presentation/modals/referral_generate_sheet.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/triage_test_card.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final referralStatsProvider =
    FutureProvider.autoDispose<MyReferralModel?>((ref) async {
  return ref
      .read(referralRepositoryImplProvider)
      .getMyReferral(statistics: true);
});

class ReferralStatisticsPage extends ConsumerWidget {
  const ReferralStatisticsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final referralStatsAsyncValue = ref.watch(referralStatsProvider);
    return Scaffold(
      appBar: const CustomAppbar(title: Text('Referral Statistics')),
      body: referralStatsAsyncValue.when(
        data: (referralStats) {
          if (referralStats == null) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "No referral statistics available. Start referring now!",
                    textAlign: TextAlign.center,
                    style: applyFiraSansFont(fontSize: 22),
                  ),
                ],
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  () {
                    if (referralStats.statistics == true) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Your Referral Statistics',
                            style: applyFiraSansFont(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Wrap(
                            runSpacing: 16,
                            spacing: 16,
                            children: [
                              _ReferralStatsCard(
                                title: 'Total Referred',
                                value: referralStats.referrals?.length
                                        .toString() ??
                                    '0',
                              ),
                              _ReferralStatsCard(
                                title: 'Successful Referred',
                                value: referralStats.referralsTriageStatistics
                                        ?.totalReferredCounts
                                        .toString() ??
                                    '0',
                              ),
                              _ReferralStatsCard(
                                title: 'Total Triage',
                                value: referralStats.referralsTriageStatistics
                                        ?.totalTriagedCounts
                                        .toString() ??
                                    '0',
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: AppColor.primary,
                              ),
                              color: const Color(0xffE9EEFA),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: SvgPicture.asset(
                                    "assets/images/triage_card_bg.svg",
                                    width: AppSize.width(context),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            "How to refer a friend?",
                                            style: applyFiraSansFont(
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(AppSize.ks),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 8),
                                            PatientHomeCardInfoTile(
                                              title:
                                                  "Share your referral code with your friend.",
                                            ),
                                            SizedBox(height: 4),
                                            PatientHomeCardInfoTile(
                                              title:
                                                  "Your friend register using your referral code.",
                                            ),
                                            SizedBox(height: 4),
                                            PatientHomeCardInfoTile(
                                              title:
                                                  "Your friend completes at least one triage test.",
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Flexible(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor: AppColor.primary,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 16,
                                              vertical: 12,
                                            ),
                                          ),
                                          onPressed: () {
                                            showReferralCodeBottomSheet(
                                                context);
                                          },
                                          child: Text(
                                            "Refer a Friend",
                                            style: applyRobotoFont(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: AppColor.white,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    } else {
                      return const SizedBox();
                    }
                  }(),
                ],
              ),
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Something went wrong! Please try again.",
                  style: applyFiraSansFont(fontSize: 16),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    ref.invalidate(referralStatsProvider);
                  },
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void showReferralCodeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => const ReferralCodeBottomSheet(),
    );
  }
}

class _ReferralStatsCard extends StatelessWidget {
  const _ReferralStatsCard({
    required this.title,
    required this.value,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.width(context),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            maxLines: 1,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: applyFiraSansFont(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: applyFiraSansFont(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
