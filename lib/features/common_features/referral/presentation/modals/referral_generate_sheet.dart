import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/referral/data/models/referral_response_model.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:share_plus/share_plus.dart';

final referralCodeProvider =
    FutureProvider.autoDispose<ReferralCodeModel>((ref) async {
  // return ref.watch(referralRepositoryImplProvider).getReferral();
  // throw ServerFailure(errorMessage: "Failed to fetch referral code");
  await Future.delayed(const Duration(seconds: 2));
  return const ReferralCodeModel(
    code: 'ABCD1234',
    statistics: {
      "redeemed": 0,
      "pending": 0,
    },
  );
});

class ReferralCodeBottomSheet extends HookConsumerWidget {
  const ReferralCodeBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final referralCodeAsyncValue = ref.watch(referralCodeProvider);
    final checkReferralStatus = useState(false);
    final loc = context.loc!;

    return referralCodeAsyncValue.when(
      data: (referral) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Your Referral Code',
                      style: applyFiraSansFont(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8),
                    SvgPicture.asset(
                      "assets/drawer_icons/referral.svg",
                    )
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  'Share your referral code with your friends and family to avail benefits.',
                  style: applyRobotoFont(
                    fontSize: 12,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        checkReferralStatus.value = !checkReferralStatus.value;
                      },
                      child: const Text('Statistics Overview'),
                    ),
                  ],
                ),
                const Divider(),
                Visibility(
                  visible: checkReferralStatus.value,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 16),
                      Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        children: [
                          _ReferralStatsCard(
                            title: 'Redeemed',
                            value:
                                referral.statistics?['redeemed'].toString() ??
                                    "",
                          ),
                          _ReferralStatsCard(
                            title: 'Pending',
                            value: referral.statistics?['pending'].toString() ??
                                "",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                _RefferalCodeCard(code: referral.code),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Share.share(
                      loc.referralSmsContent(referral.code ?? ""),
                      subject: context.loc?.emailSubject ?? "",
                    );
                  },
                  child: const Text('Share'),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        );
      },
      loading: () => const SizedBox(
        height: 150,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      error: (err, _) => const _ReferralErrorCard(
        errorMessage:
            "Apologies, we're unable to generate a referral code at the moment.",
      ),
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
      width: 120,
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
            overflow: TextOverflow.ellipsis,
            style: applyFiraSansFont(
              fontSize: 12,
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

class _RefferalCodeCard extends StatelessWidget {
  const _RefferalCodeCard({
    super.key,
    required this.code,
  });
  final String? code;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColor.lightGrey,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          SelectableText(
            code ?? "",
            style: applyFiraSansFont(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              Clipboard.setData(
                ClipboardData(
                  text: code ?? "",
                ),
              );
            },
            child: Text(
              'COPY',
              style: applyRobotoFont(
                fontSize: 16,
                color: AppColor.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ReferralErrorCard extends StatelessWidget {
  const _ReferralErrorCard({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      height: AppSize.height(context) * 0.3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Your Referral Code',
                style: applyFiraSansFont(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8),
              SvgPicture.asset(
                "assets/drawer_icons/referral.svg",
              )
            ],
          ),
          const SizedBox(height: 4),
          Text(
            errorMessage,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: applyFiraSansFont(
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
