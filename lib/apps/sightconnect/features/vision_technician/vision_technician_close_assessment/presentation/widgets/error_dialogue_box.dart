import 'package:eye_care_for_all/services/app_info_service.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> showErrorDialogue(BuildContext context) {
  String url = "tel:${AppInfoService.activateExotelNumber}";

  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      final loc = context.loc!;
      return BlurDialogBox(
        contentPadding: Responsive.isMobile(context)
            ? const EdgeInsets.all(AppSize.km)
            : const EdgeInsets.all(AppSize.kl),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              loc.vtNotRegistered,
              style: applyRobotoFont(
                fontSize: 14,
              ),
            ),
            const SizedBox(height: AppSize.km),
            InkWell(
              onTap: () async {
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Text(
                AppInfoService.activateExotelNumber,
                style: applyRobotoFont(
                  decoration: TextDecoration.underline,
                  color: AppColor.primary,
                ),
              ),
            ),
            const SizedBox(height: AppSize.km),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: Theme.of(context).textTheme.labelLarge,
                  ),
                  child: Text(loc.vtOkay),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ],
        ),
        actions: const <Widget>[],
      );
    },
  );
}
