import 'package:eye_care_for_all/core/constants/app_color.dart';
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
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppSize.kmpadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            loc.inviteCardTitle,
            // loc.inviteCardTitle,
            style: applyFiraSansFont(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: AppSize.kmheight),
          SizedBox(
            height: AppSize.height(context) * 0.18,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/invite_others.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: AppSize.width(context) * 0.3,
                    right: AppSize.width(context) * 0.02,
                    top: AppSize.width(context) * 0.01,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          loc.newInviteDescription,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: applyRobotoFont(
                            fontSize: 14,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      InkWell(
                        onTap: onPressed,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColor.white,
                              maxRadius: 14,
                              child: Icon(
                                Icons.share,
                                color: AppColor.primary,
                                size: 16,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Invite Now",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColor.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )

                // Container(
                //   height: AppSize.width(context) * 0.5,
                //   width: AppSize.width(context) * 1,
                //   padding: EdgeInsets.only(top: AppSize.width(context) * 0.02),
                //   decoration: const BoxDecoration(
                //     image: DecorationImage(
                //       image: AssetImage(AppImages.inviteBg),
                //       fit: BoxFit.cover,
                //       scale: 5,
                //     ),
                //   ),
                //   child: Padding(
                //     padding: EdgeInsets.only(
                //       left: AppSize.width(context) * 0.28,
                //       right: AppSize.width(context) * 0.09,
                //       top: AppSize.width(context) * 0.01,
                //     ),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                //       crossAxisAlignment: CrossAxisAlignment.end,
                //       children: [
                //         Text(
                //           loc.inviteCardDescription(AppText.appName),
                //           maxLines: 4,
                //           overflow: TextOverflow.ellipsis,
                //           style: applyRobotoFont(
                //             fontSize: 14,
                //           ),
                //         ),
                //         const SizedBox.shrink(),
                //         TextButton(
                //           onPressed: onPressed,
                //           child: Text(
                //             loc.shareNowButton,
                //             style: const TextStyle(
                //               fontSize: 14,
                //               fontWeight: FontWeight.w700,
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
