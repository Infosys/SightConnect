import 'dart:ui';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_language_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TranslationPopUp extends ConsumerWidget {
  const TranslationPopUp({
    required this.currentLocaleCode,
    super.key,
  });

  final String currentLocaleCode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Container(
      decoration: const BoxDecoration(
        color: AppColor.scaffold,
      ),
      height: AppSize.height(context) * 0.9,
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    ref.read(patientDashboardProvider).setVisibility(true);
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close),
                ),
                Flexible(
                  child: Text(
                    loc.languageSelection,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 50),
              ],
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: appLocales.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  final appLocale = appLocales[index];
                  bool isActiveLocale = currentLocaleCode == appLocale.locale;
                  bool isPunjabi = appLocale.locale == "pa";
                  return InkWell(
                    onTap: () {
                      if (!isPunjabi) {
                        ref
                            .read(globalLanguageProvider)
                            .setCurrentLocale(appLocale.locale)
                            .then((value) => Navigator.of(context).pop());
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              if (!isPunjabi && isActiveLocale)
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
                              if (isPunjabi)
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
            ),
          ],
        ),
      ),
    );
  }
}
