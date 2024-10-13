/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/optometritian/optometritian_dashboard/presentation/pages/optometritian_dashboard_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/optometritian/optometritian_dashboard/presentation/provider/optometritian_search_patient_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../optometritian_triage/presentation/pages/optometritian_fetch_report_page.dart';

class OptometritianSearchPatientPage extends HookConsumerWidget {
  const OptometritianSearchPatientPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(visionGuardianAddPatientProvider);
    var isSelected = useState<int>(0);
    var patientIdController = useTextEditingController();

    final loc = context.loc!;
    return Scaffold(
      backgroundColor: AppColor.scaffold,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.km),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppSize.height(context) * 0.05),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      Future.delayed(const Duration(milliseconds: 300), () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const OptometritianDashboardPage()),
                            (route) => route.isFirst);
                      });
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: AppColor.black.withOpacity(0.7),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: AppSize.height(context) * 0.05,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(
                          AppSize.kl,
                        ),
                      ),
                      child: TextField(
                          controller: patientIdController,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(16),
                            hintText: loc.optoSearchPatientId,
                            hintStyle: const TextStyle(
                              fontSize: 14,
                              color: AppColor.grey,
                            ),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColor.primary,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(AppSize.kl),
                              ),
                            ),
                          ),
                          onChanged: (value) {
                            if (value.length > 2) {
                              model.getSearchResult(value);
                            }
                          }),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSize.km + 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: AppSize.height(context) * 0.04,
                    width: AppSize.width(context) * 0.77,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: model.timeFrameList.length,
                      itemBuilder: (BuildContext context, int index) {
                        var data = model.timeFrameList[index];

                        return InkWell(
                          onTap: () {
                            if (isSelected.value == index) {
                              isSelected.value = -1;
                            } else {
                              isSelected.value = index;
                              model.setTimeFrame = data;
                            }
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: AppSize.ks),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: isSelected.value == index
                                    ? AppColor.blue
                                    : AppColor.grey,
                              ),
                              color: isSelected.value == index
                                  ? const Color(0xFFC9DAFD)
                                  : AppColor.white,
                              borderRadius: BorderRadius.circular(
                                AppSize.ks,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                data.toString().split('.').last.capitalize(),
                                style: applyRobotoFont(
                                    fontSize: 14,
                                    color: AppColor.black,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: AppSize.height(context) * 0.04,
                    width: 1.5,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  InkWell(
                    onTap: () async {
                      var pickedDateRange = await _showDateRangePicker(context);
                      if (kDebugMode) {
                        logger.d({
                          "from": pickedDateRange?.start,
                          "to": pickedDateRange?.end
                        });
                      }
                      if (pickedDateRange == null) {
                        Fluttertoast.showToast(msg: loc.optoSelectDateRange);
                        return;
                      }
                      model.setFromDate = pickedDateRange.start;
                      model.setToDate = pickedDateRange.end;
                    },
                    child: const CircleAvatar(
                      backgroundColor: AppColor.white,
                      radius: 14,
                      child: Icon(
                        CupertinoIcons.calendar,
                        size: 18,
                        color: AppColor.grey,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.kl,
              ),
              Text(
                loc.optoRecentAssessments,
                style:
                    applyRobotoFont(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: AppSize.kl,
              ),
              model.isLoading
                  ? const Center(child: CircularProgressIndicator.adaptive())
                  : Column(children: [
                      model.searchPatientList.isEmpty
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(
                                    width: AppSize.width(context) * 0.55,
                                    image: const AssetImage(
                                      "assets/images/search empty.png",
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: AppSize.kl,
                                ),
                                Text(
                                  loc.optoDataNotFound,
                                  style: applyRobotoFont(
                                    fontSize: 14,
                                    color: AppColor.grey,
                                  ),
                                )
                              ],
                            )
                          : Column(
                              children: model.searchPatientList.map(
                                (entry) {
                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              OptometritianFetchReportPage(
                                            report: entry,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(
                                        AppSize.ks,
                                      ),
                                      margin: const EdgeInsets.only(
                                        bottom: AppSize.ks + 5,
                                      ),
                                      decoration: BoxDecoration(
                                        color: AppColor.white,
                                        borderRadius: BorderRadius.circular(
                                          AppSize.ks,
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                entry.patientId ?? "",
                                                style: applyFiraSansFont(
                                                    fontSize: 16,
                                                    color: AppColor.black,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                entry.assessmentEndTime
                                                    .formateDateWithTime,
                                                style: applyRobotoFont(
                                                  fontSize: 10,
                                                  color: AppColor.black,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  entry.patientEducation ?? "",
                                                  softWrap: true,
                                                  style: applyRobotoFont(
                                                    fontSize: 14,
                                                    color: AppColor.grey,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: AppSize.ks,
                                              ),
                                              Flexible(
                                                child: Text(
                                                  entry.patientProfession ?? "",
                                                  softWrap: true,
                                                  style: applyRobotoFont(
                                                    fontSize: 14,
                                                    color: AppColor.grey,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ).toList(),
                            )
                    ])
            ],
          ),
        ),
      ),
    );
  }

  Future<DateTimeRange?> _showDateRangePicker(BuildContext context) async {
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      initialEntryMode: DatePickerEntryMode.input,
      firstDate: DateTime.now().subtract(const Duration(days: 365 * 2)),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            iconTheme: const IconThemeData(color: AppColor.white),
            primaryColor: AppColor.primary,
            buttonTheme:
                const ButtonThemeData(textTheme: ButtonTextTheme.primary),
            colorScheme: const ColorScheme.light(
              primary: AppColor.primary,
            ).copyWith(
              secondary: AppColor.lightBlue,
            ),
          ),
          child: child!,
        );
      },
    );
    return picked;
  }
}
