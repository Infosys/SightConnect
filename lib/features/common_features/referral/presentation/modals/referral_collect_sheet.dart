import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

showReferralCollectSheet(BuildContext context) async {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    isDismissible: false,
    builder: (context) {
      return const ReferralCollectSheet();
    },
  );
}

class ReferralCollectSheet extends HookConsumerWidget {
  const ReferralCollectSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = useState(false);
    final code = useState("");

    return BottomSheet(
      onClosing: () {},
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: (context) {
        if (isLoading.value) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        return Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      'Collect Referral',
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
                  'Enter referral code to collect your reward',
                  style: applyFiraSansFont(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: AppSize.kl),
                TextField(
                  onChanged: (value) {
                    code.value = value;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Referral Code',
                    hintText: 'Enter referral code',
                  ),
                ),
                const SizedBox(height: AppSize.kl * 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Skip'),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: code.value.isEmpty
                            ? null
                            : () async {
                                final navigator = Navigator.of(context);
                                try {
                                  isLoading.value = true;
                                  await Future.delayed(
                                    const Duration(seconds: 2),
                                  );
                                  isLoading.value = false;
                                  navigator.pop();
                                } catch (e) {
                                  const msg =
                                      "Sorry, something went wrong. Please try again.";
                                  Fluttertoast.showToast(msg: msg);
                                  isLoading.value = false;
                                }
                              },
                        child: const Text('Collect'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        );
      },
    );
  }
}
