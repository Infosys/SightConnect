import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/doctor/tissue_details/presentation/widgets/cornea_evaluation_section.dart';
import 'package:eye_care_for_all/features/doctor/tissue_details/presentation/widgets/donor_details_section.dart';
import 'package:eye_care_for_all/features/doctor/tissue_details/presentation/widgets/eye_bank_details_card.dart';
import 'package:eye_care_for_all/features/doctor/tissue_details/presentation/widgets/medical_summary_section.dart';
import 'package:eye_care_for_all/features/doctor/tissue_details/presentation/widgets/pathology_details_section.dart';
import 'package:eye_care_for_all/features/doctor/tissue_details/presentation/widgets/serology_section.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DoctorTissueDetailForm extends StatelessWidget {
  const DoctorTissueDetailForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tissue Detail Form'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.download_sharp,
              color: AppColor.grey,
            ),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: AppColor.grey,
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              EyeBankDetailsCard(),
              DonorDetailsSection(),
              MedicalSummarySection(),
              PathologyDetailsSection(),
              CorneaEvaluationSection(),
              SerologySection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Accept'),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  // show popup to accept a reason for rejection

                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        contentPadding: const EdgeInsets.all(16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        icon: const Icon(
                          Icons.warning_rounded,
                          color: AppColor.red,
                          size: 40,
                        ),
                        title: Text(
                          'Reason for Rejection',
                          style: applyFiraSansFont(
                            fontSize: 18,
                          ),
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Please provide a reason for rejection : ',
                              style: applyRobotoFont(
                                fontSize: 14,
                                color: AppColor.grey,
                              ),
                            ),
                            const SizedBox(height: 16),
                            SizedBox(
                              width: 400,
                              child: TextFormField(
                                maxLines: 1,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              Fluttertoast.showToast(
                                msg: 'Tissue Rejected',
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 3,
                                backgroundColor: AppColor.red,
                                textColor: AppColor.white,
                                fontSize: 16.0,
                              );
                            },
                            child: const Text('Submit'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text('Reject'),
              ),
            ),
            Expanded(
                flex: Responsive.isMobile(context) ? 0 : 4,
                child: const SizedBox.shrink())
          ],
        ),
      ),
    );
  }
}
