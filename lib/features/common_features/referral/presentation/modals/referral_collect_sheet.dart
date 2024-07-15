import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/referral/data/models/referral_response_model.dart';
import 'package:eye_care_for_all/features/common_features/referral/data/repository/referral_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/referral/presentation/widgets/referral_code_error.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<bool?> showReferralCollectSheet(BuildContext context) async {
  return showModalBottomSheet<bool>(
    context: context,
    isScrollControlled: true,
    isDismissible: false,
    builder: (context) {
      return const ReferralCollectSheet();
    },
  );
}

final myReferralProvider =
    FutureProvider.autoDispose<ReferralRequestModel?>((ref) async {
  return ref.read(referralRepositoryImplProvider).getMyReferrer();
});

class ReferralCollectSheet extends HookConsumerWidget {
  const ReferralCollectSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    final isLoading = useState(false);
    final code = useState("");
    final myReferralAsyncValue = ref.watch(myReferralProvider);

    return myReferralAsyncValue.when(
      data: (data) {
        if (data != null) {
          final msg = loc.referralCollectSheetReferredBy(data.referredBy!);

          return Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      loc.referralCollectSheetYourRefferalCode,
                      style: applyFiraSansFont(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/drawer_icons/referral.svg",
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  loc.referralCollectSheetReferralCodeMessage,
                  style: applyRobotoFont(
                    fontSize: 12,
                  ),
                ),
                const Divider(),
                const SizedBox(height: 4),
                Text(
                  msg,
                  style: applyFiraSansFont(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColor.green,
                  ),
                ),
                const SizedBox(height: 4),
                Chip(
                  label: Text(
                    data.code ?? "",
                    style: applyFiraSansFont(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20)
              ],
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
                      loc.referralCollectSheetHeader,
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
                  loc.referralCollectSheetBody,
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
                  decoration: InputDecoration(
                    labelText: loc.referralCollectSheetTextFieldHeader,
                    hintText: loc.referralCollectSheetTextFieldBody,
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
                        child: Text(loc.referralCollectSheetSkipButton),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: code.value.isEmpty
                            ? null
                            : () async {
                                await submitReferral(
                                  context,
                                  ref,
                                  isLoading,
                                  code,
                                );
                              },
                        child: Text(loc.referralCollectSheetCollectButton),
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
      loading: () => const SizedBox(
        height: 150,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      error: (err, _) => ReferralErrorCard(
        errorMessage: loc.referralCollectSheetError,
      ),
    );
  }

  Future<void> submitReferral(
    BuildContext context,
    WidgetRef ref,
    ValueNotifier<bool> isLoading,
    ValueNotifier<String> code,
  ) async {
    final navigator = Navigator.of(context);
    final loc = context.loc!;
    try {
      isLoading.value = true;
      logger.f("Referral code: ${code.value}");
      await ref.read(referralRepositoryImplProvider).submitReferral(code.value);
      Fluttertoast.showToast(msg: loc.referralCollectSheetSuccessToast);
      navigator.pop(true);
    } on Failure catch (e) {
      Fluttertoast.showToast(msg: e.errorMessage);
    } catch (e) {
      Fluttertoast.showToast(msg: loc.referralCollectSheetErrorToast);
    } finally {
      isLoading.value = false;
    }
  }
}
