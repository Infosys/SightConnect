import 'package:eye_care_for_all/apps/eyebank/features/doctor/tissue_details/presentation/widgets/tissue_details_info_tile.dart';
import 'package:eye_care_for_all/shared/widgets/app_form_section.dart';
import 'package:flutter/material.dart';

class DonorDetailsSection extends StatelessWidget {
  const DonorDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppFormSection(title: 'Donor Details', children: [
      TissueDetailsInfoTile(
        title: 'Donor ID',
        value: 'RIEB24-0003',
      ),
      TissueDetailsInfoTile(
        title: 'Tissue ID',
        value: 'RIEB24-0003 OD-C',
      ),
      TissueDetailsInfoTile(
        title: 'Tissue Type',
        value: 'Cornea',
      ),
      TissueDetailsInfoTile(
        title: 'Donor Age',
        value: '50 Yrs',
      ),
      TissueDetailsInfoTile(
        title: 'Donor Gender',
        value: 'Female',
      ),
      TissueDetailsInfoTile(
        title: 'Date & Time of Death',
        value: '31/12/23, 06:00 AM',
      ),
      TissueDetailsInfoTile(
        title: 'Date & Time of in Situ',
        value: '31/12/23, 11:45 AM',
      ),
      TissueDetailsInfoTile(
        title: 'Date & Time of Preservation',
        value: '31/12/23, 11:45 AM',
      ),
      TissueDetailsInfoTile(
        title: 'Death to Preservation Time',
        value: '0 d 5 hrs 45 min',
      ),
      TissueDetailsInfoTile(
        title: 'Primary COD',
        value: 'Other Diseases',
      ),
      TissueDetailsInfoTile(
        title: 'Ocular Cooling',
      ),
      TissueDetailsInfoTile(
        title: 'Total Cooling Time',
        value: '0 Hrs',
      ),
      TissueDetailsInfoTile(
        title: 'Excision Tech',
        value: 'G Narender',
      ),
      TissueDetailsInfoTile(
        title: 'Preservation Tech',
        value: 'G Narender',
      ),
      TissueDetailsInfoTile(
        title: 'Storage Media',
        value: 'MK',
      ),
      TissueDetailsInfoTile(
        title: 'Media Lot No.',
        value: 'M071223',
      ),
      TissueDetailsInfoTile(
        title: 'Tissue Expiry Date',
        value: '04/01/24, 11:45 AM',
      ),
    ]);
  }
}
