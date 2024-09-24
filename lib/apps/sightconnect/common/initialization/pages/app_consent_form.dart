import 'package:eye_care_for_all/apps/sightconnect/common/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/widgets/app_web_view.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/consent_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/repositories/consent_repository_impl.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/api_constant.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
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
        body: IgnorePointer(
          ignoring: isPreview,
          child: Stack(
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
                      if (consent.consentStatus == ConsentStatus.ACKNOWLEDGED) {
                        return _AcceptedConsentTile(consent: consent);
                      }
                      return _PendingConsentTile(
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
      ),
    );
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
  });

  final ConsentModel consent;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.check, color: Colors.green),
      title: Text('${consent.templateType}'),
      subtitle: const Text('Accepted'),
    );
  }
}

class _PendingConsentTile extends StatelessWidget {
  const _PendingConsentTile({
    required this.consent,
    required this.onAccept,
  });

  final ConsentModel consent;
  final ValueChanged<bool?> onAccept;

  @override
  Widget build(BuildContext context) {
    String eighteenPlusConsent =
        "This app is intended for users aged 18 and above. By clicking 'I Agree', you are confirming that you are 18 years or older";
    return ExpansionTile(
      title: Text('${consent.templateType}'),
      childrenPadding: const EdgeInsets.all(8),
      children: [
        if (consent.templateType == "AGE_DECLARATION")
          Text(
            eighteenPlusConsent,
            style: Theme.of(context).textTheme.bodySmall,
          )
        else
          SizedBox(
            height: AppSize.height(context) * 0.5,
            child: AppWebView(
              url: "${ApiConstant.baseUrl}/dam/${consent.templateId}",
            ),
          ),
        CheckboxListTile(
          title: const Text('Accepted'),
          value: consent.consentStatus == ConsentStatus.ACKNOWLEDGED,
          onChanged: (bool? value) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Confirm Consent'),
                  content: Text(
                      'Do you accept the consent for template ${consent.templateType}?'),
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
                      child: const Text('Accept'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}
// import 'package:eye_care_for_all/apps/sightconnect/common/initialization/providers/initilization_provider.dart';
// import 'package:eye_care_for_all/apps/sightconnect/common/initialization/widgets/app_web_view.dart';
// import 'package:eye_care_for_all/apps/sightconnect/helpers/repositories/consent_repository_impl.dart';
// import 'package:eye_care_for_all/main.dart';
// import 'package:eye_care_for_all/services/exceptions.dart';
// import 'package:eye_care_for_all/shared/constants/api_constant.dart';
// import 'package:eye_care_for_all/shared/constants/app_size.dart';
// import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
// import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../../../helpers/providers/global_language_provider.dart';

// final appConsentFormProvider = FutureProvider((ref) {
//   final consentRepository = ref.watch(consentRepositoryProvider);
//   return consentRepository.getConsent(type: "PRIVACY_POLICY");
// });

// class AppConsentFormPage extends HookConsumerWidget {
//   const AppConsentFormPage({super.key, this.isPreview = false});
//   final bool isPreview;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     var selectedValue = useState<bool>(false);
//     var isApiLoading = useState<bool>(false);
//     final loc = context.loc!;

//     return PopScope(
//       canPop: false,
//       child: Scaffold(
//         appBar: CustomAppbar(
//           title: Text(loc.privacyPolicyTitle),
//           automaticallyImplyLeading: false,
//           leadingIcon: isPreview ? null : const SizedBox(),
//         ),
//         body: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 8),
//           height: AppSize.height(context),
//           width: AppSize.width(context),
//           child: ref.watch(appConsentFormProvider).when(
//             data: (data) {
//               final lang =
//                   ref.watch(globalLanguageProvider).currentLocale?.languageCode;
//               if (isPreview) {
//                 return Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     Expanded(
//                       child: AppWebView(
//                         url:
//                             "${ApiConstant.baseUrl}/dam/${data.first.templateId}?langId=${lang}",
//                       ),
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: AppSize.km,
//                         vertical: AppSize.km / 2,
//                       ),
//                       child: ElevatedButton(
//                         onPressed: null,
//                         child: Text("Accepted"),
//                       ),
//                     ),
//                   ],
//                 );
//               }

//               return Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Expanded(
//                     child: AppWebView(
//                       url:
//                           "${ApiConstant.baseUrl}/dam/${data.first.templateId}?langId=${lang}",
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: AppSize.km,
//                       vertical: AppSize.km / 2,
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         CheckboxListTile.adaptive(
//                           controlAffinity: ListTileControlAffinity.leading,
//                           title: Text(loc.consentPageCheckbox),
//                           value: selectedValue.value,
//                           onChanged: (value) {
//                             selectedValue.value = value ?? false;
//                           },
//                         ),
//                         isApiLoading.value
//                             ? const Center(
//                                 child: CircularProgressIndicator.adaptive(),
//                               )
//                             : ElevatedButton(
//                                 onPressed: !selectedValue.value
//                                     ? null
//                                     : () async {
//                                         final navigator = Navigator.of(context);
//                                         final model =
//                                             ref.read(initializationProvider);
//                                         try {
//                                           isApiLoading.value = true;
//                                           if (await model.getConsentStatus()) {
//                                             navigator.pop(true);
//                                           } else {
//                                             await model.sumbitConsent(
//                                                 consent: data.first);
//                                             navigator.pop(true);
//                                           }
//                                         } catch (e) {
//                                           logger.e(e);
//                                           Fluttertoast.showToast(
//                                               msg: loc.somethingWentWrong);
//                                         } finally {
//                                           isApiLoading.value = false;
//                                         }
//                                       },
//                                 child: Text(loc.proceedButton),
//                               )
//                       ],
//                     ),
//                   ),
//                 ],
//               );
//             },
//             error: (e, s) {
//               final msg = DioErrorHandler.getErrorMessage(e);
//               return Center(
//                 child: Text(msg),
//               );
//             },
//             loading: () {
//               return const Center(
//                 child: CircularProgressIndicator.adaptive(),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
