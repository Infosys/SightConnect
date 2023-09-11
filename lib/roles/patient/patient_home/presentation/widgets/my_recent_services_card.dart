import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecentServicesCard extends StatelessWidget {
  const RecentServicesCard({Key? key, required this.data}) : super(key: key);
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(AppSize.kmradius),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.kmradius),
          ),
          color: data["color"],
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppSize.kmpadding,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  data["icon"],
                  height: AppSize.klpadding,
                  width: AppSize.klpadding,
                ),
                const SizedBox(
                  height: AppSize.ksheight,
                ),
                Text(
                  data["text"],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: applyFiraSansFont(
                    fontSize: 12,
                    color: AppColor.kBlack,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
