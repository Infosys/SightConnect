import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

showReferralCollectSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isDismissible: false,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    showDragHandle: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
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
    return GestureDetector(
      onTap: () {},
      child: DraggableScrollableSheet(
        initialChildSize: 0.5,
        minChildSize: 0.5,
        maxChildSize: 0.7,
        builder: (BuildContext context, myscrollController) {
          return LoadingOverlay(
            isLoading: isLoading.value,
            child: Scaffold(
              resizeToAvoidBottomInset: true,
              body: SingleChildScrollView(
                controller: myscrollController,
                child: Padding(
                  padding: const EdgeInsets.all(AppSize.kl),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Collect Referral',
                        style: applyFiraSansFont(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
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
                      const TextField(
                        decoration: InputDecoration(
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
                              onPressed: () async {
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
