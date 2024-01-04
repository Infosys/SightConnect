import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class InviteCard extends StatelessWidget {
  const InviteCard({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
          child: Text(
            loc.inviteCardTitle,
            style: applyFiraSansFont(
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          height: AppSize.height(context) * 0.02,
        ),
        Container(
          height: AppSize.width(context) * 0.5,
          width: AppSize.width(context) * 1,
          padding: EdgeInsets.only(top: AppSize.width(context) * 0.02),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.inviteBg),
              fit: BoxFit.cover,
              scale: 5,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: AppSize.width(context) * 0.28,
              right: AppSize.width(context) * 0.09,
              top: AppSize.width(context) * 0.01,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  loc.inviteCardDescription(AppText.appName),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: applyRobotoFont(
                    fontSize: 14,
                  ),
                ),
                const SizedBox.shrink(),
                TextButton(
                  onPressed: onPressed,
                  child: Text(
                    loc.shareNowButton,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
