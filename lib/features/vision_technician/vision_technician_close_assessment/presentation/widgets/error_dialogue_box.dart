import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> showErrorDialogue(BuildContext context) {
  String url = "tel:02249360005";

  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      final loc = context.loc!;
      return BlurDialogBox(
        contentPadding: const EdgeInsets.all(AppSize.klpadding * 2),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              loc.vtNotRegistered,
              style: applyRobotoFont(),
            ),
            const SizedBox(height: AppSize.kmheight),
            InkWell(
              onTap: () async {
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Text(
                "02249360005",
                style: applyRobotoFont(
                  decoration: TextDecoration.underline,
                  color: AppColor.primary,
                ),
              ),
            ),
            const SizedBox(height: AppSize.kmheight),
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
