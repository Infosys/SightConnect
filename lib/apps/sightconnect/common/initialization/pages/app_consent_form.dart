import 'package:eye_care_for_all/apps/sightconnect/common/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/widgets/app_web_view.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/consent_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_language_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/repositories/consent_repository_impl.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/api_constant.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appConsentFormProvider = FutureProvider<List<ConsentModel>>((ref) {
  final consentRepository = ref.watch(consentRepositoryProvider);
  return consentRepository.getConsent();
});

class AppConsentFormPage extends HookConsumerWidget {
  const AppConsentFormPage({super.key, this.isPreview = false});
  final bool isPreview;

  static String eighteenPlusConsent =
      "This app is intended for users aged 18 and above. By clicking 'I Agree', you are confirming that you are 18 years or older";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final consentAsyncValue = ref.watch(appConsentFormProvider);
    final loc = context.loc!;
    final isLoading = useState(false);

    return PopScope(
      canPop: isPreview ? true : false,
      child: Scaffold(
        appBar: AppBar(
          title: Text(loc.privacyPolicyTitle),
        ),
        body: Stack(
          children: [
            consentAsyncValue.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
              data: (consents) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: consents.length,
                  itemBuilder: (context, index) {
                    final consent = consents[index];
                    final langCode = ref
                        .watch(globalLanguageProvider)
                        .currentLocale
                        ?.languageCode;
                    if (consent.consentStatus == ConsentStatus.ACKNOWLEDGED) {
                      return _AcceptedConsentTile(
                        consent: consent,
                        langCode: langCode,
                      );
                    }
                    return _PendingConsentTile(
                      langCode: langCode,
                      consent: consent,
                      onAccept: (value) {
                        _updateConsentStatus(
                          isLoading,
                          consents,
                          index,
                          ref,
                          context,
                        );
                      },
                    );
                  },
                );
              },
            ),
            if (isLoading.value)
              const Center(
                child: CircularProgressIndicator(),
              ),
          ],
        ),
      ),
    );
  }

  static formatTitle(String? type) {
    if (type == null) return '';
    return type.replaceAll('_', ' ');
  }

  Future<void> _updateConsentStatus(
    ValueNotifier<bool> isLoading,
    List<ConsentModel> consents,
    int index,
    WidgetRef ref,
    BuildContext context,
  ) async {
    try {
      isLoading.value = true;
      final navigator = Navigator.of(context);
      final model = ref.read(initializationProvider);
      final consent = consents[index];
      await model.sumbitConsent(consent: consent);
      logger.i('Consent accepted for ${consent.templateType}');

      // Update local consent status
      consents[index] =
          consent.copyWith(consentStatus: ConsentStatus.ACKNOWLEDGED);

      // Call the API again to check if all consents are acknowledged
      final updatedConsents =
          await ref.read(consentRepositoryProvider).getConsent();
      final allAcknowledged = updatedConsents
          .every((c) => c.consentStatus == ConsentStatus.ACKNOWLEDGED);
      if (allAcknowledged) {
        navigator.pop(true);
      }
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      Fluttertoast.showToast(msg: 'An error occurred');
    }
  }
}

class _AcceptedConsentTile extends StatelessWidget {
  const _AcceptedConsentTile({
    required this.consent,
    required this.langCode,
  });

  final ConsentModel consent;
  final String? langCode;

  @override
  Widget build(BuildContext context) {
    final url = ApiConstant.isDev
        ? "/services/templates/api/static/template/${consent.templateId}"
        : "/dam/${consent.templateId}?langId=${langCode}";
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ExpansionTile(
        backgroundColor: AppColor.grey.withOpacity(0.1),
        leading: const Icon(Icons.check_circle, color: Colors.green),
        visualDensity: VisualDensity.compact,
        title: Text('${AppConsentFormPage.formatTitle(consent.templateType)}'),
        childrenPadding: const EdgeInsets.all(16),
        children: [
          if (consent.templateType == "AGE_DECLARATION")
            Text(
              AppConsentFormPage.eighteenPlusConsent,
              style: Theme.of(context).textTheme.bodySmall,
            )
          else
            AppWebView(
              url: url,
            ),
          const CheckboxListTile(
            title: Text('Accepted'),
            value: true,
            onChanged: null,
          ),
        ],
      ),
    );
  }
}

class _PendingConsentTile extends StatelessWidget {
  const _PendingConsentTile({
    required this.consent,
    required this.onAccept,
    this.langCode,
  });

  final ConsentModel consent;
  final ValueChanged<bool?> onAccept;
  final String? langCode;

  @override
  Widget build(BuildContext context) {
    final url = ApiConstant.isDev
        ? "/services/templates/api/static/template/${consent.templateId}"
        : "/dam/${consent.templateId}?langId=${langCode}";
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ExpansionTile(
        leading: const Icon(Icons.info, color: Colors.grey),
        visualDensity: VisualDensity.compact,
        title: Text('${AppConsentFormPage.formatTitle(consent.templateType)}'),
        childrenPadding: const EdgeInsets.all(16),
        children: [
          if (consent.templateType == "AGE_DECLARATION")
            Text(
              AppConsentFormPage.eighteenPlusConsent,
              style: Theme.of(context).textTheme.bodySmall,
            )
          else
            AppWebView(url: url),
          CheckboxListTile(
            title: const Text('I Agree'),
            value: consent.consentStatus == ConsentStatus.ACKNOWLEDGED,
            onChanged: (bool? value) {
              showConsentDialog(
                  context, consent.templateType ?? "", onAccept, value);
            },
          ),
        ],
      ),
    );
  }

  void showConsentDialog(BuildContext context, String templateType,
      ValueChanged<bool?> onAccept, bool? value) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Confirm Your Consent'),
          content: Text(
              'Do you agree to the terms and conditions for the ${AppConsentFormPage.formatTitle(templateType)}?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                onAccept(value);
                Navigator.of(context).pop();
              },
              child: const Text('Agree'),
            ),
          ],
        );
      },
    );
  }
}
