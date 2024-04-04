import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/repositories/consent_repository_impl.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:flutter/cupertino.dart';

class EighteenPlusDeclaration extends HookConsumerWidget {
  const EighteenPlusDeclaration({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // var isLoading = useState(false);
    // final loc = context.loc!;
    // var selectedValue = useState<bool>(false);
    var isAPILoading = useState<bool>(false);
    final loc = context.loc!;
    return PopScope(
      canPop: false,
      child: BlurDialogBox(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.exclamationmark_triangle_fill,
              color: AppColor.orange,
              size: 40,
            ),
          ],
        ),
        content: ref.watch(ageDeclarationProvider).when(
          data: (data) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "18+ Declaration",
                  style: applyRobotoFont(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "This app is intended for users aged 18 and above. By clicking 'I Agree', you are confirming that you are 18 years or older.",
                  style: applyRobotoFont(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColor.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Consumer(
                      builder: (context, ref, child) {
                        if (isAPILoading.value) {
                          return const CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(AppColor.orange),
                          );
                        }
                        return TextButton(
                          onPressed: () async {
                            final navigator = Navigator.of(context);
                            final model = ref.read(initializationProvider);
                            try {
                              isAPILoading.value = true;
                              if (await model
                                  .getEighteenPlusDeclarationStatus()) {
                                navigator.pop(true);
                              } else {
                                await model.sumbitConsent(consent: data);
                                navigator.pop(true);
                              }
                            } catch (e) {
                              logger.e(e);
                              Fluttertoast.showToast(
                                  msg: loc.somethingWentWrong);
                            } finally {
                              isAPILoading.value = false;
                            }
                          },
                          child: Text(loc.agreeButton),
                        );
                      },
                    ),
                  ],
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
        actions: const [],
      ),
    );
  }
}

final ageDeclarationProvider = FutureProvider((ref) {
  final consentRepository = ref.watch(consentRepositoryProvider);
  return consentRepository.getConsent(type: "AGE_DECLARATION");
});

// class EighteenPlusDeclaration extends HookConsumerWidget {
//   const EighteenPlusDeclaration({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     var selectedValue = useState<bool>(false);
//     var isAPILoading = useState<bool>(false);
//     final loc = context.loc!;
//     return PopScope(
//       canPop: false,
//       child: Scaffold(
//         extendBodyBehindAppBar: true,
//         appBar: const CustomAppbar(
//           title: Text("18+ Declaration"),
//           automaticallyImplyLeading: false,
//           leadingIcon: SizedBox(),
//         ),
//         body: Container(
//           height: AppSize.height(context),
//           width: AppSize.width(context),
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage(
//                 AppImages.scaffoldBg,
//               ),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: ref.watch(ageDeclarationProvider).when(
//             data: (data) {
//               final lang =
//                   ref.watch(globalLanguageProvider).currentLocale?.languageCode;
//               return SafeArea(
//                 child: Container(
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: AppColor.white,
//                     boxShadow: applyLightShadow(),
//                     borderRadius: const BorderRadius.all(
//                       Radius.circular(AppSize.km - 5),
//                     ),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       Expanded(
//                         child: AppWebView(
//                           url:
//                               "${Env.baseUrl}/dam/${data.templateId}?langId=${lang}",
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: AppSize.km,
//                           vertical: AppSize.km / 2,
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.stretch,
//                           children: [
//                             CheckboxListTile.adaptive(
//                               controlAffinity: ListTileControlAffinity.leading,
//                               title: Text(loc.consentPageCheckbox),
//                               value: selectedValue.value,
//                               onChanged: (value) {
//                                 selectedValue.value = value ?? false;
//                               },
//                             ),
//                             isAPILoading.value
//                                 ? const Center(
//                                     child: CircularProgressIndicator.adaptive(),
//                                   )
//                                 : ElevatedButton(
//                                     onPressed: !selectedValue.value
//                                         ? null
//                                         : () async {
//                                             final navigator =
//                                                 Navigator.of(context);
//                                             final model = ref
//                                                 .read(initializationProvider);
//                                             try {
//                                               isAPILoading.value = true;
//                                               if (await model
//                                                   .getEighteenPlusDeclarationStatus()) {
//                                                 navigator.pop(true);
//                                               } else {
//                                                 await model.sumbitConsent(
//                                                     consent: data);
//                                                 navigator.pop(true);
//                                               }
//                                             } catch (e) {
//                                               logger.e(e);
//                                               Fluttertoast.showToast(
//                                                   msg: loc.somethingWentWrong);
//                                             } finally {
//                                               isAPILoading.value = false;
//                                             }
//                                           },
//                                     child: Text(loc.agreeButton),
//                                   )
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
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