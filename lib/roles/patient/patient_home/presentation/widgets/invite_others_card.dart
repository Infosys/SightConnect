import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class InviteCard extends StatelessWidget {
  const InviteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Invite Others to Join",
          style: applyFiraSansFont(
            fontSize: 18,
            fontWeight: FontWeight.w600,
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
                  const Text(
                    "As a delighted user, you could invite your family and friends to join and explore the benefits of the Eye Care for All app.",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Share Now",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
