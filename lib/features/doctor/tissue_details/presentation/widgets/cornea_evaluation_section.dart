import 'package:eye_care_for_all/features/doctor/tissue_details/presentation/widgets/tissue_details_info_tile.dart';
import 'package:eye_care_for_all/shared/widgets/app_form_section.dart';
import 'package:flutter/material.dart';

class CorneaEvaluationSection extends StatelessWidget {
  const CorneaEvaluationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppFormSection(
      title: 'Cornea Evaluation',
      children: [
        TissueDetailsInfoTile(title: 'Tissue Suitability', value: 'NSFT'),
        TissueDetailsInfoTile(title: 'Approved Usage'),
        TissueDetailsInfoTile(title: 'Clear Zone', value: '8 mm'),
        TissueDetailsInfoTile(title: 'Lens Type', value: 'Pseudophakic'),
        TissueDetailsInfoTile(title: 'Cell Count (per mm2)', value: '1808'),
        TissueDetailsInfoTile(title: 'No. Of Fields', value: '1'),
        TissueDetailsInfoTile(title: 'Pachymetry (microns)', value: '525'),
        TissueDetailsInfoTile(
            title: 'Slit Lamp Date/Time', value: '01/01/2024, 01:14 PM'),
        TissueDetailsInfoTile(title: 'Slit Lamp Tech', value: 'K. Srinivas'),
        TissueDetailsInfoTile(
            title: 'Specular Date/Time', value: '01/01/2024, 12:04 PM'),
        TissueDetailsInfoTile(
            title: 'Specular Tech', value: 'CH Venkata Swamy'),
        Divider(),
        TissueDetailsInfoTile(
          title: 'Epithelium',
          value:
              'None Haze; Moderate Diffuse Exposure Keratitis; 30% Diffuse Sloughing',
          maxwidth: double.infinity,
          minwidth: double.infinity,
        ),
        TissueDetailsInfoTile(
          title: 'Stroma',
          value:
              "Neither; Nostril; None Relative Number of Stray; Mild-Moderate Diffuse Edema; Mild-Moderate Arcus; Opacities 1: Surgical (IOL); ; 2mm Form Limbus Location ; ; Opacities 2 : Surgical (IOL)",
          maxwidth: double.infinity,
          minwidth: double.infinity,
        ),
        TissueDetailsInfoTile(
          title: 'Descemet’s',
          value: 'Few-Several Mild-Moderate Folds Defect at IOL Scar',
          maxwidth: double.infinity,
          minwidth: double.infinity,
        ),
        TissueDetailsInfoTile(
          title: 'Endothelium',
          value:
              'Few Mid-Pheripheral Stress Lines; ; Mild-Moderate Mid-Peripheral Cell Dropout; None Polymegathism; None Pleomorphism',
          maxwidth: double.infinity,
          minwidth: double.infinity,
        ),
        TissueDetailsInfoTile(
          title: 'Additional',
          value: 'None Jaundice; Irregular Scleral Rim; Yes Scleral Rim 2 mm',
          maxwidth: double.infinity,
          minwidth: double.infinity,
        ),
        TissueDetailsInfoTile(
          title: 'Comments',
          maxwidth: double.infinity,
          minwidth: double.infinity,
        ),
      ],
    );
  }
}
