import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class YourAppointmentCard extends StatelessWidget {
  const YourAppointmentCard({Key? key, required this.data}) : super(key: key);
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.ksradius),
        color: AppColor.kWhite.withOpacity(0.35),
      ),
      padding: const EdgeInsets.all(AppSize.kspadding),
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data["day"],
                style: applyRobotoFont(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: AppSize.ksheight / 2,
              ),
              Text(
                data["Time"],
                style: applyRobotoFont(
                  fontSize: 10,
                  color: AppColor.kGrey,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: AppSize.kmwidth,
          ),
          Expanded(
            child: Row(
              children: [
                Flexible(
                  child: Text(
                    data["appointment"],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: applyRobotoFont(
                      fontSize: 14,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert_sharp,
                    color: AppColor.kGrey,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
