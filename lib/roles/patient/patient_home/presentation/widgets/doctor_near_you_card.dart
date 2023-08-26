import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class DoctorNearYouCard extends StatelessWidget {
  const DoctorNearYouCard({Key? key, required this.data}) : super(key: key);
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(AppSize.kspadding),
            decoration: BoxDecoration(
              color: AppColor.kWhite,
              borderRadius: BorderRadius.circular(AppSize.ksradius),
              boxShadow: const [],
            ),
            width: AppSize.width * 0.4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (data["image"] != null)
                  CircleAvatar(
                    maxRadius: 40,
                    minRadius: 35,
                    backgroundImage: AssetImage(data["image"]),
                  )
                else
                  CircleAvatar(
                    maxRadius: 40,
                    minRadius: 35,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                const SizedBox(height: AppSize.kmheight),
                Text(
                  data["name"],
                  style: applyRobotoFont(
                    fontSize: 12,
                  ),
                ),
                Text(
                  data["profession"],
                  style: applyRobotoFont(
                    fontSize: 10,
                    color: AppColor.kGrey,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Book Appointment",
                    style: applyRobotoFont(
                      fontSize: 14,
                      color: AppColor.kPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -4,
            child: Container(
              padding: const EdgeInsets.all(AppSize.kspadding / 3),
              decoration: BoxDecoration(
                color: AppColor.kLightGreen,
                borderRadius: BorderRadius.circular(AppSize.ksradius),
              ),
              child: Text(
                "98% match",
                style: applyRobotoFont(
                  fontSize: 11,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
