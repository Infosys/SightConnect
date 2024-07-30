import 'package:animate_do/animate_do.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/referral/data/models/referral_response_model.dart';
import 'package:eye_care_for_all/features/common_features/referral/data/repository/referral_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/referral/presentation/modals/referral_generate_sheet.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/triage_test_card.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
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
    final loc = context.loc!;
    final referralStatsAsyncValue = ref.watch(referralStatsProvider);
    return Scaffold(
      appBar: CustomAppbar(title: Text(loc.referralStatisticsPageHeader)),
      body: referralStatsAsyncValue.when(
        data: (referralStats) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: FadeInDown(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Image.asset(
                      "assets/images/referral_statistics.png",
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 16),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          children: [
                            _ReferralStatsCard(
                              title: loc.referralStatisticsPageTotalReferred,
                              colorCode: '0xffCFD8DC',
                              value:
                                  referralStats?.referrals?.length.toString() ??
                                      '0',
                            ),
                            _ReferralStatsCard(
                              title: loc.referralStatisticsPageSucessfulReferred,
                              colorCode: '0xffA5D6A7',
                              value: referralStats?.referralsTriageStatistics
                                      ?.totalReferredCounts
                                      .toString() ??
                                  '0',
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            _ReferralStatsCard(
                              title: loc.referralStatisticsPageTotalTriage,
                              colorCode: '0xffD1C4E9',
                              value: referralStats?.referralsTriageStatistics
                                      ?.totalTriagedCounts
                                      .toString() ??
                                  '0',
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        SlideInDown(
                          child: Container(
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
                                            loc.referralStatisticsPageReferFriendHeader,
                                            style: applyFiraSansFont(
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(AppSize.ks),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(height: 8),
                                            PatientHomeCardInfoTile(
                                              title:
                                                  loc.referralStatisticsPageReferFriendBody1,
                                            ),
                                            const SizedBox(height: 4),
                                            PatientHomeCardInfoTile(
                                              title:
                                                  loc.referralStatisticsPageReferFriendBody2,
                                            ),
                                            const SizedBox(height: 4),
                                            PatientHomeCardInfoTile(
                                              title:
                                                  loc.referralStatisticsPageReferFriendBody3,
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
                                            loc.referralStatisticsPageReferFriendButton,
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
                        ),
                      ],
                    )
                  ],
                ),
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
                  loc.referralStatisticsPageError,
                  textAlign: TextAlign.center,
                  style: applyFiraSansFont(fontSize: 16),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    ref.invalidate(referralStatsProvider);
                  },
                  child: Text(loc.referralStatisticsPageRetryButton),
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
    this.colorCode = '0xffFFD700',
  });
  final String title;
  final String value;
  final String colorCode;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 80,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(int.parse(colorCode)),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          alignment: Alignment.center,
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
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  value,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: applyFiraSansFont(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  title,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: applyFiraSansFont(
                    fontSize: 14,
                    color: AppColor.darkGrey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
