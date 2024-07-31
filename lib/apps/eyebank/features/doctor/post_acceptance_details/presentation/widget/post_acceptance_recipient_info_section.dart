import 'package:eye_care_for_all/apps/eyebank/features/doctor/tissue_details/presentation/widgets/tissue_details_info_tile.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_form_section.dart';
import 'package:flutter/material.dart';

class PostAcceptanceRecipientInfoSection extends StatelessWidget {
  final VoidCallback onTap;
  const PostAcceptanceRecipientInfoSection({Key? key, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppFormSection(
      title: 'Recipient Information',
      children: [
        Row(
          children: [
            const SizedBox(),
            const Spacer(),
            GestureDetector(
              onTap: onTap,
              child: Text(
                "Change Patient",
                style: applyRobotoFont(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColor.primary,
                ),
              ),
            ),
          ],
        ),
        const TissueDetailsInfoTile(
          title: 'Patient Name',
          value: 'Rita Bora',
        ),
        const TissueDetailsInfoTile(
          title: 'Patient ID',
          value: 'RIEB24-0003 OD-C',
        ),
        const TissueDetailsInfoTile(
          title: 'Date of Birth',
          value: '12th May 1974',
        ),
        const TissueDetailsInfoTile(
          title: 'Age',
          value: '50 Yrs',
        ),
        const TissueDetailsInfoTile(
          title: 'Gender',
          value: 'Female',
        ),
      ],
    );
  }
}
