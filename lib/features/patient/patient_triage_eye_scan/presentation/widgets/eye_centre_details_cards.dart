import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EyeCentreDetailsCards extends StatelessWidget {
  const EyeCentreDetailsCards({super.key});

  @override
  Widget build(BuildContext context) {
    List nearByVisionCenter = [
      {
        "name": "Dr Kommareddy Raja Ram Mohan Rao Eye Centre",
        "location": "Near Gudavalli Village, Cherukupalli, Guntur",
        "phone": "99634 78759",
        "speciality":
            "Emergency | Diagnostics | Rehabilitation | Paediatric Eye Care | Counselling",
      },
      {
        "name": "Edward and Soona Brown Eye Centre",
        "location": "Pindugurala Road, Sattanapalli, Guntur",
        "phone": "99634 78760",
        "speciality":
            "Emergency | Diagnostics | Rehabilitation | Paediatric Eye Care | Counselling",
      },
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: nearByVisionCenter
            .map(
              (e) => Container(
                padding: const EdgeInsets.all(
                  AppSize.kmpadding,
                ),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(AppSize.ksradius),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.primary.withOpacity(0.1),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      e["name"],
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.klheight,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          AppIcon.location,
                          height: 16,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          e["location"],
                          style: applyRobotoFont(
                            fontSize: 14,
                            color: const Color(0xff333333),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppSize.ksheight,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          AppIcon.call,
                          height: 16,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          e["phone"],
                          style: applyRobotoFont(
                            fontSize: 14,
                            color: const Color(0xff333333),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppSize.ksheight,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          AppIcon.location,
                          height: 16,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        SizedBox(
                          width: AppSize.width(context) * 0.7,
                          child: Text(
                            e["speciality"],
                            softWrap: true,
                            style: applyRobotoFont(
                              fontSize: 14,
                              color: const Color(0xff333333),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
