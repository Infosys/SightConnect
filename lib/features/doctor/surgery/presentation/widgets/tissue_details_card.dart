import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class TissueDetailsCard extends StatelessWidget {
  final String? tissueId;
  final String? tissueType;
  final String? storageMedia;
  final String? expiresOn;

  const TissueDetailsCard({
    this.tissueId,
    this.tissueType,
    this.storageMedia,
    this.expiresOn,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSize.kl),
      color: AppColor.lightBlueOpacity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tissue details',
            style: applyFiraSansFont(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: AppSize.km),
          Column(
            children: [
              _getInfoRow('Tissue ID', tissueId ?? '--'),
              const SizedBox(height: AppSize.km),
              _getInfoRow('Tissue Type', tissueType ?? '--'),
              const SizedBox(height: AppSize.km),
              _getInfoRow('Storage Media', storageMedia ?? '--'),
              const SizedBox(height: AppSize.km),
              _getInfoRow('Expires On', expiresOn ?? '--'),
            ],
          ),
        ],
      ),
    );
  }

  _getInfoRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: applyRobotoFont(
              fontSize: 14,
              color: AppColor.grey,
            )),
        Text(value,
            style: applyRobotoFont(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            )),
      ],
    );
  }
}
