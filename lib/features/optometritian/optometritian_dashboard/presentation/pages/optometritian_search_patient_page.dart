import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/provider/optometritian_search_patient_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OptometritianSearchPatientPage extends HookConsumerWidget {
  const OptometritianSearchPatientPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(visionGuardianAddPatientProvider);
    var isSelected = useState<int>(-1);

    return Scaffold(
      backgroundColor: AppColor.scaffold,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.kmpadding),
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
                        Navigator.pop(context);
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
                          AppSize.klradius,
                        ),
                      ),
                      child: TextField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                          hintText: "Search Patient ID",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: AppColor.grey,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColor.primary,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(AppSize.klradius),
                            ),
                          ),
                        ),
                        onChanged: (value) {
                          model.setQuery = value;
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSize.kmheight + 5),
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
                            margin:
                                const EdgeInsets.only(right: AppSize.kspadding),
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
                                AppSize.ksradius,
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
                        Fluttertoast.showToast(
                            msg: "Please select a date range");
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
                height: AppSize.klheight,
              ),
              Text(
                "Recent Assessments",
                style:
                    applyRobotoFont(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: AppSize.klheight,
              ),
              Column(
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
                    height: AppSize.klheight,
                  ),
                  isSelected.value != -1
                      ? Text(
                          "Data not found for this search",
                          style: applyRobotoFont(
                            fontSize: 14,
                            color: AppColor.grey,
                          ),
                        )
                      : Text(
                          model.query.isEmpty
                              ? "This feature will be made available shortly."
                              : "This Patient ID is not found. Please try searching with a different Patient ID.",
                          style: applyRobotoFont(
                            fontSize: 14,
                            color: AppColor.grey,
                          ),
                        ),
                ],
              ),
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
