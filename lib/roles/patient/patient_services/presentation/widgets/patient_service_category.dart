import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_appointment_booking/presentation/pages/patient_appointment_schedule_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/presentation/pages/patient_eye_scan_instructions_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_services/data/data/local_source.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PatientServiceCategory extends StatelessWidget {
  const PatientServiceCategory({
    Key? key,
    required this.services,
    required this.title,
  }) : super(key: key);
  final List<String> services;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSize.klpadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: applyFiraSansFont(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSize.kmheight),
          Wrap(
            runSpacing: 8,
            spacing: 10,
            alignment: WrapAlignment.start,
            children: services
                .map(
                  (miniapp) => InkWell(
                    onTap: () {
                      if (miniapp == "Eye Scan") {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const PatientEyeScanInstructionsPage(),
                          ),
                        );
                      }
                      if (miniapp == "Appointment Booking") {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const PatientAppointmentSchedulePage(),
                          ),
                        );
                      }
                    },
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Column(
                        children: [
                          mappers[miniapp] != null
                              ? SvgPicture.asset(
                                  mappers[miniapp]!,
                                  height: 24,
                                  width: 24,
                                  fit: BoxFit.contain,
                                )
                              : const CircleAvatar(),
                          const SizedBox(
                            height: AppSize.ksheight,
                          ),
                          Text(
                            miniapp,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: applyRobotoFont(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
