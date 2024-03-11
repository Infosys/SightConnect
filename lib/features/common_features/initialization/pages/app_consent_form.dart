import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/repositories/consent_repository_impl.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/env.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/widgets/app_web_view.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/providers/global_language_provider.dart';

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

    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: CustomAppbar(
          title: Text(loc.privacyPolicyTitle),
          automaticallyImplyLeading: false,
          centerTitle: false,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          height: AppSize.height(context),
          width: AppSize.width(context),
          child: ref.watch(appConsentFormProvider).when(
            data: (data) {
              final lang =
                  ref.watch(globalLanguageProvider).currentLocale?.languageCode;
              if (isPreview) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: AppWebView(
                        url:
                            "${Env.baseUrl}/dam/${data.templateId}?langId=${lang}",
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSize.kmpadding,
                        vertical: AppSize.kmpadding / 2,
                      ),
                      child: ElevatedButton(
                        onPressed: null,
                        child: Text("Accepted"),
                      ),
                    ),
                  ],
                );
              }

              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: AppWebView(
                      url:
                          "${Env.baseUrl}/dam/${data.templateId}?langId=${lang}",
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
                                        final navigator = Navigator.of(context);
                                        final model =
                                            ref.read(initializationProvider);
                                        try {
                                          isApiLoading.value = true;
                                          if (await model.getConsentStatus()) {
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
