import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_dashboard/presentation/pages/optometritian_add_patient_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_dashboard/presentation/provider/optometritian_search_patient_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianSearchPatientPage extends ConsumerWidget {
  const VisionGuardianSearchPatientPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(visionGuardianAddPatientProvider);
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: Column(
          children: [
            SizedBox(
              height: AppSize.height(context) * 0.05,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    model.stopSearch();
                    //pop context
                    FocusScope.of(context).unfocus();
                    Future.delayed(const Duration(milliseconds: 300), () {
                      Navigator.pop(context);
                    });
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(
                        AppSize.klradius,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.primary.withOpacity(0.1),
                          blurRadius: 30,
                          spreadRadius: 30,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        hintText: "Find a patient by ID",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: AppColor.black,
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
                        model.searchPatient(value);
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.klheight + 20,
            ),
            model.searchPatientList.isEmpty
                ? Column(
                    children: [
                      model.isMatched == false && model.isSearching == true
                          ? Image(
                              width: AppSize.width(context) * 0.5,
                              image: const AssetImage(
                                  "assets/images/search empty.png"),
                            )
                          : SvgPicture.asset(
                              "assets/images/optometric_empty_search.svg",
                              width: AppSize.width(context) * 0.5,
                            ),
                      const SizedBox(
                        height: AppSize.klheight,
                      ),
                      Text(
                        model.isMatched == false && model.isSearching == true
                            ? "Sorry we couldn’t find any matches.\n Please try searching with other ID."
                            : "Find the Patient by searching with the Identification number or add new patient.",
                        style: applyRobotoFont(
                          fontSize: 14,
                          color: AppColor.grey,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(AppSize.klpadding),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shadowColor: MaterialStateProperty.all(
                                    AppColor.white,
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                    AppColor.white,
                                  ),
                                  side: MaterialStateProperty.all(
                                    const BorderSide(
                                        color: AppColor.blue, width: 1.5),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const OptometricianAddPatientPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Add New Patient',
                                  style: applyRobotoFont(
                                    color: AppColor.blue,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                : Column(
                    children: model.searchPatientList
                        .map((e) => Container(
                            padding: const EdgeInsets.all(AppSize.kmpadding),
                            margin: const EdgeInsets.only(
                              bottom: AppSize.klpadding,
                            ),
                            decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(
                                AppSize.klradius,
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("${e.id}"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: AppSize.width(context) * 0.35,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Education",
                                            style: applyRobotoFont(
                                                fontSize: 12,
                                                color: AppColor.grey,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            "${e.education}",
                                            style: applyRobotoFont(
                                                fontSize: 14,
                                                color: AppColor.black,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Employment",
                                          style: applyRobotoFont(
                                              fontSize: 12,
                                              color: AppColor.grey,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "${e.employment}",
                                          style: applyRobotoFont(
                                              fontSize: 14,
                                              color: AppColor.black,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            )))
                        .toList(),
                  )
          ],
        ),
      )),
    );
  }
}
