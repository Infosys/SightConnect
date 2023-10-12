import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/pages/patient_triage_page.dart';
import 'package:eye_care_for_all/features/patient/patient_tumbling_test/pages/tumbling_test_page.dart';
import 'package:eye_care_for_all/features/patient/patient_tumbling_test/widgets/tumbling_test_left_eye_instruction.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecentServicesCard extends StatelessWidget {
  const RecentServicesCard({Key? key, required this.data}) : super(key: key);
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: InkWell(
        onTap: () {
          if (data["text"] == "Acuity test") {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TumblingTestPage(),
              ),
            );
          } else if (data["text"] == "Triage") {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const PatientTriagePage(),
              ),
            );
          }
          if (data["text"] == "Pledge") {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TumblingLeftEyeInstruction(),
              ),
            );
          }
        },
        borderRadius: BorderRadius.circular(AppSize.kmradius),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.kmradius),
          ),
          color: data["color"],
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppSize.kmpadding,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  data["icon"],
                  height: AppSize.klpadding,
                  width: AppSize.klpadding,
                  color: AppColor.black,
                ),
                const SizedBox(
                  height: AppSize.ksheight,
                ),
                Text(
                  data["text"],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: applyFiraSansFont(
                    fontSize: 12,
                    color: AppColor.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
