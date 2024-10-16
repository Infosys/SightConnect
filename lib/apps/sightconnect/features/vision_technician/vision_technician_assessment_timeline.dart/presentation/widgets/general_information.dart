/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GeneralInformation extends ConsumerWidget {
  const GeneralInformation({
    super.key,
    required this.model,
  });

  final VTPatientDto model;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    final isMobile = Responsive.isMobile(context);
    return Container(
      padding: const EdgeInsets.all(AppSize.km),
      decoration: const BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.km - 5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            loc.vtGeneralInformation,
            style: applyFiraSansFont(
              fontSize: 16,
            ),
          ),
          SizedBox(height: isMobile ? AppSize.km : AppSize.kl),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    _InfoChip(
                      title: loc.vtDateOfBirth,
                      value:
                          "${model.dayOfBirth}/${model.monthOfBirth}/${model.yearOfBirth}",
                    ),
                    const SizedBox(height: AppSize.ks),
                    _InfoChip(
                      title: loc.vtAddress,
                      value: _formateAddress(
                        model.pincode,
                        model.districtName,
                        model.townName,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _InfoChip(
                      title: loc.vtGender,
                      value: model.gender != null
                          ? model.gender!.name.toLowerCase().capitalize()
                          : "",
                    ),
                    const SizedBox(height: AppSize.ks),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSize.ks),
        ],
      ),
    );
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
  String address = "";
  if (tow.isNotEmpty) {
    address += tow;
  }
  if (dist.isNotEmpty) {
    if (address.isNotEmpty) {
      address += ", ";
    }
    address += dist;
  }
  if (pin.isNotEmpty) {
    if (address.isNotEmpty) {
      address += ", ";
    }
    address += pin;
  }
  return address;
}

class _InfoChip extends StatelessWidget {
  const _InfoChip({
    required this.title,
    required this.value,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: AutoSizeText(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            maxFontSize: 14,
            minFontSize: 12,
            style: applyRobotoFont(
              fontSize: 14,
              color: AppColor.grey,
            ),
          ),
        ),
        SizedBox(
          width: Responsive.isMobile(context) ? AppSize.ks : AppSize.kl,
        ),
        Flexible(
          child: Text(
            value,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            style: applyRobotoFont(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
