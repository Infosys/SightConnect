import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_search_result_model.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class GeneralInformation extends ConsumerWidget {
  const GeneralInformation({
    super.key,
    required this.model,
  });

  final VTPatientSearchDto model;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.kmradius - 5),
        ),
      ),
      padding: const EdgeInsets.all(AppSize.kspadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "General Information",
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: AppSize.klheight,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date of Birth",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: applyFiraSansFont(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Address",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: applyFiraSansFont(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _formateAge(
                            model.dayOfBirth,
                            model.monthOfBirth,
                            model.yearOfBirth,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: applyRobotoFont(
                            fontWeight: FontWeight.w400,
                            color: AppColor.grey,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          _formateAddress(
                            model.pincode,
                            model.districtName,
                            model.townName,
                          ),
                          style: applyRobotoFont(
                            fontWeight: FontWeight.w400,
                            color: AppColor.grey,
                            fontSize: 14,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Flexible(
                child: Row(
                  children: [
                    Text(
                      "Gender",
                      style: applyFiraSansFont(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: Responsive.isMobile(context)
                          ? AppSize.kswidth
                          : AppSize.klwidth,
                    ),
                    Text(
                      model.gender ?? "",
                      style: applyRobotoFont(
                        fontWeight: FontWeight.w400,
                        color: AppColor.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSize.kmheight),
        ],
      ),
    );
  }
}

String _formateAge(
  String? day,
  String? mon,
  String? year,
) {
  if (day == null || mon == null || year == null) return "";
  final date = DateTime.parse("$year-$mon-$day");
  final formatter = DateFormat("dd MMM yyyy");
  return formatter.format(date);
}

String _formateAddress(
  String? pincode,
  String? district,
  String? town,
) {
  final pin = pincode ?? "";
  final dist = district ?? "";
  final tow = town ?? "";
  return "$tow, $dist, $pin";
}
