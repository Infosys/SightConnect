import 'dart:ui';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_language_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TranslationPopUp extends HookConsumerWidget {
  const TranslationPopUp({
    this.locale,
    super.key,
  });

  final Locale? locale;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedLocale = useState<AppLocale?>(
      locale != null
          ? appLocales.firstWhere(
              (appLocale) => appLocale.locale == locale!.languageCode)
          : appLocales.firstWhere((appLocale) => appLocale.locale == 'en'),
    );

    return PopScope(
      canPop: false,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: BottomAppBar(
            padding: EdgeInsets.symmetric(
              horizontal: AppSize.width(context) * 0.1,
              vertical: AppSize.height(context) * 0.02,
            ),
            child: ElevatedButton(
              onPressed: () {
                ref
                    .read(globalLanguageProvider)
                    .setCurrentLocale(selectedLocale.value!.locale)
                    .then((value) => Navigator.of(context).pop());

                ref.read(patientDashboardProvider).setVisibility(true);
              },
              child: const Text("Confirm"),
            ),
          ),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.scaffoldBg),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                  bottom: 80,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: AppSize.height(context) * 0.06),
                    Text(
                      "Welcome to",
                      style: applyFiraSansFont(
                        fontSize: 18,
                        color: const Color(0xff888888),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Image.asset(
                      AppImages.logo,
                      height: 40,
                      width: 140,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Please confirm your language",
                      style: applyRobotoFont(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 16),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: appLocales.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
                        childAspectRatio:
                            Responsive.isMobile(context) ? 1.5 : 1.7,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        final appLocale = appLocales[index];
                        bool isNotAvailableLocale = appLocale.flag;
                        bool isActiveLocale =
                            selectedLocale.value?.locale == appLocale.locale;

                        return InkWell(
                          onTap: () {
                            if (isNotAvailableLocale) {
                              selectedLocale.value = appLocale;
                              logger.d({
                                "selectedLocale": selectedLocale.value!.locale,
                              });
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: isActiveLocale
                                    ? AppColor.primary
                                    : Colors.black38.withOpacity(0),
                                width: isActiveLocale ? 2 : 1,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      appLocale.localeSymbol,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: applyRobotoFont(
                                        fontSize: 28,
                                        color: isActiveLocale
                                            ? AppColor.primary
                                            : AppColor.black,
                                      ),
                                    ),
                                    if (isNotAvailableLocale && isActiveLocale)
                                      Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColor.green,
                                        ),
                                        child: const Icon(
                                          Icons.check,
                                          color: AppColor.white,
                                          size: 20,
                                        ),
                                      ),
                                    if (!isNotAvailableLocale)
                                      Text(
                                        'Coming Soon',
                                        style: applyRobotoFont(
                                          fontSize: 14,
                                          color: AppColor.primary,
                                        ),
                                      ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      appLocale.localeName,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: applyRobotoFont(
                                        fontSize: 14,
                                        color: isActiveLocale
                                            ? AppColor.primary
                                            : AppColor.black,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Text(
                                        appLocale.locale != "en"
                                            ? appLocale.name
                                            : "",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: applyRobotoFont(
                                          fontSize: 14,
                                          color: isActiveLocale
                                              ? AppColor.primary
                                              : AppColor.darkGrey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
