import 'package:eye_care_for_all/core/constants/api_constant.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/repositories/consent_repository_impl.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/widgets/app_web_view.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
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
              if (isPreview) {
                return SafeArea(
                  child: Scaffold(
                    appBar: CustomAppbar(
                      title: Text(loc.privacyPolicyTitle),
                      automaticallyImplyLeading: false,
                      centerTitle: false,
                    ),
                    body: AppWebView(
                      url: "${ApiConstant.baseUrl}/dam/${data.templateId}",
                    ),
                  ),
                );
              }
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
                    Expanded(
                      child: AppWebView(
                        url: "${ApiConstant.baseUrl}/dam/${data.templateId}",
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
                                          final model =
                                              ref.read(initializationProvider);
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
