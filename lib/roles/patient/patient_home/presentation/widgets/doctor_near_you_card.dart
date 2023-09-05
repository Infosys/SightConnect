import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../../../../../shared/responsive/responsive.dart';

class DoctorNearYouCard extends StatelessWidget {
  const DoctorNearYouCard({
    Key? key,
    required this.data,
  }) : super(key: key);
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isMobile(context)
          ? AppSize.width(context) * 0.45
          : AppSize.width(context) * 0.35,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.fromLTRB(
        AppSize.kspadding,
        AppSize.kspadding,
        AppSize.kspadding,
        AppSize.kspadding,
      ),
      decoration: BoxDecoration(
        color: AppColor.kWhite,
        borderRadius: BorderRadius.circular(AppSize.kmradius),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (data["image"] != null)
            CircleAvatar(
              maxRadius: 35,
              minRadius: 25,
              backgroundImage: AssetImage(
                data["image"],
              ),
            )
          else
            CircleAvatar(
              maxRadius: 35,
              minRadius: 25,
              backgroundColor: AppColor.kGrey.withOpacity(0.3),
            ),
          const SizedBox(height: AppSize.ksheight),
          Text(
            data["name"],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: applyRobotoFont(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            data["profession"],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(
              fontSize: 10,
              color: AppColor.kGrey,
            ),
          ),
          const SizedBox(height: AppSize.ksheight),
          Text(
            data["hospital"],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          Flexible(
            child: Material(
              type: MaterialType.card,
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(AppSize.kspadding),
                  child: Text(
                    "Book Appointment",
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: applyRobotoFont(
                      fontSize: 14,
                      color: AppColor.kPrimary,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
