import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/repositories/consent_repository_impl.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:flutter_miniapp_web_runner/flutter_miniapp_web_runner.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appConsentFormProvider = FutureProvider((ref) {
  final consentRepository = ref.watch(consentRepositoryProvider);
  return consentRepository.getConsent(type: "PRIVACY_POLICY");
});

class AppConsentFormPage extends HookConsumerWidget {
  const AppConsentFormPage({super.key, this.isPreview = false});
  final bool isPreview;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedValue = useState<bool>(false);
    var isApiLoading = useState<bool>(false);
    final loc = context.loc!;

    if (isPreview) {
      return SafeArea(
        child: Scaffold(
          appBar: CustomAppbar(
            title: Text(loc.privacyPolicyTitle),
            automaticallyImplyLeading: false,
            centerTitle: false,
          ),
          body: const _AppWebView(
            url: "https://surveys.infosysapps.com/dam/6353",
          ),
        ),
      );
    } else {
      return PopScope(
        canPop: false,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: CustomAppbar(
            title: Text(loc.privacyPolicyTitle),
            automaticallyImplyLeading: false,
            centerTitle: false,
          ),
          body: Container(
            height: AppSize.height(context),
            width: AppSize.width(context),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppImages.scaffoldBg,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: ref.watch(appConsentFormProvider).when(
              data: (data) {
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    boxShadow: applyLightShadow(),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(AppSize.kmradius - 5),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Expanded(
                        child: _AppWebView(
                          url: "https://surveys.infosysapps.com/dam/6353",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSize.kmpadding,
                          vertical: AppSize.kmpadding / 2,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            CheckboxListTile.adaptive(
                              controlAffinity: ListTileControlAffinity.leading,
                              title: Text(loc.consentPageCheckbox),
                              value: selectedValue.value,
                              onChanged: (value) {
                                selectedValue.value = value ?? false;
                              },
                            ),
                            isApiLoading.value
                                ? const Center(
                                    child: CircularProgressIndicator.adaptive(),
                                  )
                                : ElevatedButton(
                                    onPressed: !selectedValue.value
                                        ? null
                                        : () async {
                                            final navigator =
                                                Navigator.of(context);
                                            final model = ref
                                                .read(initializationProvider);
                                            try {
                                              isApiLoading.value = true;
                                              if (await model
                                                  .getConsentStatus()) {
                                                navigator.pop(true);
                                              } else {
                                                await model.sumbitConsent(
                                                    consent: data);
                                                navigator.pop(true);
                                              }
                                            } catch (e) {
                                              logger.e(e);
                                              Fluttertoast.showToast(
                                                  msg: loc.somethingWentWrong);
                                            } finally {
                                              isApiLoading.value = false;
                                            }
                                          },
                                    child: Text(loc.agreeButton),
                                  )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              error: (e, s) {
                final msg = DioErrorHandler.getErrorMessage(e);
                return Center(
                  child: Text(msg),
                );
              },
              loading: () {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              },
            ),
          ),
        ),
      );
    }
  }
}

class _AppWebView extends HookWidget {
  const _AppWebView({
    super.key,
    required this.url,
  });
  final String url;

  @override
  Widget build(BuildContext context) {
    var isLoading = useState<bool>(false);
    var progress = useState<double>(0.0);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: WebUri(url),
            ),
            initialSettings: InAppWebViewSettings(
              preferredContentMode: UserPreferredContentMode.MOBILE,
              textZoom: 300,
            ),
            onProgressChanged: (controller, p) {
              progress.value = p / 100;
              if (progress.value == 100) {
                isLoading.value = false;
              } else {
                isLoading.value = true;
              }
            },
          ),
          progress.value < 1.0
              ? LinearProgressIndicator(value: progress.value)
              : Container(),
        ],
      ),
    );
  }
}
