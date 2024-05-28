import 'package:eye_care_for_all/features/common_features/referral/data/models/referral_response_model.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:share_plus/share_plus.dart';

final referralCodeProvider = FutureProvider<ReferralCodeModel>((ref) async {
  // return ref.watch(referralRepositoryImplProvider).getReferral();
  // await Future.delayed(const Duration(seconds: 2));
  return const ReferralCodeModel(
    code: 'ABCD1234',
  );
});

class ReferralCodeBottomSheet extends ConsumerWidget {
  const ReferralCodeBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final referralCodeAsyncValue = ref.watch(referralCodeProvider);

    return referralCodeAsyncValue.when(
      data: (referral) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
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
              const Divider(),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  referral.code ?? "",
                  style: applyFiraSansFont(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Share.share(
                    'Use my referral code ${referral.code ?? ""} to avail benefits.',
                    subject: 'Referral Code',
                  );
                },
                child: const Text('Share'),
              ),
              const SizedBox(height: 24),
            ],
          ),
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (err, _) => const Text(
          "Apologies, we're unable to generate a referral code at the moment."),
    );
  }
}
