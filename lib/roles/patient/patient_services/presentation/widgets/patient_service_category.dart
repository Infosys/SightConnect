import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/presentation/pages/eye_scan_home_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: applyFiraSansFont(),
            ),
          ],
        ),
        const SizedBox(
          height: AppSize.kmheight,
        ),
        Wrap(
          runSpacing: 4,
          alignment: WrapAlignment.start,
          children: services
              .map((miniapp) => InkWell(
                    onTap: () {
                      if (miniapp == "Eye Scan") {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const EyeScanHomePage(),
                          ),
                        );
                      }
                    },
                    child: Container(
                      constraints: const BoxConstraints(
                        maxWidth: 80,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          // SvgPicture.asset(
                          //   AssetMapper.getAssetIcon(miniapp)!,
                          //   height: 24,
                          //   width: 24,
                          //   fit: BoxFit.contain,
                          // ),
                          const CircleAvatar(),
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
                  ))
              .toList(),
        ),
      ],
    );
  }
}
