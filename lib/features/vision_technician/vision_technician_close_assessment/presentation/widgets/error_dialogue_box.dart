import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> showErrorDialogue(BuildContext context) {
  String url = "tel:02249360005";

  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      final loc = context.loc!;
      return AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSize.klradius))),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              loc.vtNotRegistered,
              style: applyRobotoFont(),
            ),
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
            )
          ],
        ),
        actions: <Widget>[
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
      );
    },
  );
}
