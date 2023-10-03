import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_appointment_booking/presentation/pages/patient_appointment_schedule_page.dart';
import 'package:eye_care_for_all/features/patient/patient_cataract_eye_scan/presentation/pages/patient_eye_scan_instructions_page.dart';
import 'package:eye_care_for_all/features/patient/patient_services/data/data/local_source.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
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
      margin: Responsive.isMobile(context)
          ? const EdgeInsets.only(bottom: AppSize.klpadding)
          : const EdgeInsets.only(bottom: AppSize.klpadding * 2),
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
          Responsive.isMobile(context)
              ? const SizedBox(height: AppSize.kmheight)
              : const SizedBox(height: AppSize.klheight),
          Wrap(
            runSpacing: Responsive.isMobile(context) ? 10 : 20,
            spacing: Responsive.isMobile(context) ? 10 : 20,
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
                      width: Responsive.isMobile(context) ? 80 : 120,
                      child: Column(
                        children: [
                          mappers[miniapp] != null
                              ? SvgPicture.asset(
                                  mappers[miniapp]!,
                                  height:
                                      Responsive.isMobile(context) ? 24 : 32,
                                  width: Responsive.isMobile(context) ? 24 : 32,
                                  fit: BoxFit.contain,
                                )
                              : const CircleAvatar(),
                          const SizedBox(
                            height: AppSize.ksheight,
                          ),
                          Text(
                            miniapp,
                            softWrap: true,
                            textAlign: TextAlign.center,
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
