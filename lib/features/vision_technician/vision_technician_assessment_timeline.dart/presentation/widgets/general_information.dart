import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';

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

  final VTPatientDto model;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
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
            loc.vtGeneralInformation,
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
                      loc.vtDateOfBirth,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: applyFiraSansFont(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      loc.vtAddress,
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
                          _formatDateWithAge(
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
                      loc.vtGender,
                      style: applyFiraSansFont(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: Responsive.isMobile(context)
                          ? AppSize.kswidth
                          : AppSize.klwidth,
                    ),
                    Text(
                      model.gender.toString(),
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

String _formatDateWithAge(
  String? day,
  String? mon,
  String? year,
) {
  try {
    day = day ?? "01";
    mon = mon ?? "Jan";
    if (year != null) {
      final date = DateFormat("yyy-MMM-dd").parse("$year-$mon-$day");
      final age = DateTime.now().difference(date).inDays ~/ 365;
      return "$day $mon $year ($age years)";
    } else {
      return "";
    }
  } catch (e) {
    return "";
  }
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
