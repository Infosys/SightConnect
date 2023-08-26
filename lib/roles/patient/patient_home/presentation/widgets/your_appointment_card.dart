import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class YourAppointmentCard extends StatelessWidget {
  const YourAppointmentCard({Key? key, required this.data}) : super(key: key);
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        tileColor: AppColor.kWhite,
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              data["day"],
              style: applyRobotoFont(
                fontSize: 12,
              ),
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
        title: Text(
          data["appointment"],
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: applyRobotoFont(
            fontSize: 14,
          ),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
      ),
    );
  }
}
