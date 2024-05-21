import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class DoctorInfoCard extends StatelessWidget {
  final String name;
  final String id;
  final String hospitalName;
  final String imageUrl;
  final List<Widget> children = [];

  DoctorInfoCard({
    required this.name,
    required this.id,
    required this.hospitalName,
    required this.imageUrl,
    children,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedBackgroundColor: AppColor.lightBlueOpacity,
      title: ListTile(
        contentPadding: const EdgeInsets.all(0),
        style: ListTileStyle.drawer,
        title: Text(
          name,
          style: applyFiraSansFont(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColor.black,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ID: $id',
              style: applyRobotoFont(
                fontSize: 14,
                color: AppColor.primary,
              ),
            ),
            Text(
              hospitalName,
              style: applyRobotoFont(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        isThreeLine: true,
        leading: const CircleAvatar(
          backgroundColor: AppColor.lightGrey,
          radius: 36,
          child: Icon(
            Icons.person,
            color: AppColor.white,
            size: 34,
          ),
        ),
      ),
      children: children,
    );
  }
}
