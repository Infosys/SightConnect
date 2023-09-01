import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants/app_images.dart';
import '../../data/local/fake_data_source.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.height(context) * 0.3,
      padding: const EdgeInsets.all(AppSize.kspadding),
      decoration: BoxDecoration(
        boxShadow: appShadow(),
        image: const DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage(AppImages.profileBg),
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(AppSize.klradius),
          bottomRight: Radius.circular(AppSize.klradius),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: AppSize.height(context) * 0.1),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(130),
              child: Image.asset(
                profile["image"] ?? "",
                fit: BoxFit.cover,
              ),
            ),
            title: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
              child: Text(
                profile["name"] ?? "",
                style:
                    applyFiraSansFont(fontSize: 24, fontWeight: FontWeight.w300)
                        .copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            subtitle: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
              child: Text(
                profile["id"] ?? "",
                style:
                    applyRobotoFont(fontSize: 14, fontWeight: FontWeight.w300)
                        .copyWith(
                  color: Colors.white54,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: AppSize.klheight,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(AppSize.kspadding),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white12,
                      ),
                      child: const Icon(
                        Icons.call_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ksheight / 2,
                    ),
                    Text(
                      profile["mobile"] ?? "",
                      style: applyRobotoFont(
                        fontSize: 14,
                      ).copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(AppSize.kspadding),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white12,
                      ),
                      child: const Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ksheight,
                    ),
                    Flexible(
                      child: Text(
                        profile["email"] ?? "",
                        softWrap: true,
                        style: applyRobotoFont(
                          fontSize: 14,
                        ).copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
