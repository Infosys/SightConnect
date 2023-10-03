import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/providers/patient_home_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_eye_scan/presentation/provider/patient_result_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_eye_scan/presentation/provider/patient_triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/presentation/providers/patient_triage_steps_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AssessmentResultPage extends ConsumerWidget {
  const AssessmentResultPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
//state - Completed, Complete test, Not Applicable
//issueLevel - Normal, Minor, Major
    var resultData = ref.watch(resultStateProvider);
    resultData.setResultState(0, 'Completed', 'Normal');

    // List resultState = [
    //   {
    //     "type": "Assessment\nQuestions",
    //     "state": "Completed",
    //     "issueLevel": "Normal",
    //   },
    //   {
    //     "type": "Aquity\nTest",
    //     "state": "Complete test",
    //     "issueLevel": "Minor",
    //   },
    //   {
    //     "type": "Eye\nScan",
    //     "state": "Not Applicable",
    //     "issueLevel": "Major",
    //   },
    // ];

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
    return Scaffold(
      backgroundColor: AppColor.scaffold,
      appBar: AppBar(
        title: const Text("Assessment Result"),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(patientTriageStepsProvider).getTriageDetails();
            },
            icon: const Icon(
              Icons.download_outlined,
              color: AppColor.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share_outlined,
              color: AppColor.grey,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: AppSize.kmheight),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                child: Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppSize.width(context) * 0.05,
                            vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColor.lightGrey.withOpacity(0.4),
                        ),
                        child: Row(mainAxisSize: MainAxisSize.min, children: [
                          SizedBox(
                            width: AppSize.width(context) * 0.29,
                            child: Text(
                              "Raghavi Pandey",
                              style: applyRobotoFont(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                              softWrap: true,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "AID: EA 010101",
                            softWrap: true,
                            style: applyRobotoFont(
                                fontSize: 11, fontWeight: FontWeight.w600),
                          )
                        ]),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 14),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.green.withOpacity(0.2),
                            offset: const Offset(0, 2),
                            blurRadius: 20,
                            spreadRadius: 20,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.white,
                        border: const Border.symmetric(
                          horizontal:
                              BorderSide(color: AppColor.green, width: 2),
                          vertical: BorderSide(color: AppColor.green, width: 1),
                        ),
                      ),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: AppSize.width(context) * 0.01,
                                    ),
                                    decoration: const BoxDecoration(
                                      color: AppColor.green,
                                    ),
                                    child: Text(
                                      "Routine Consult",
                                      style: applyRobotoFont(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600,
                                          color: AppColor.white),
                                    )),
                                const Spacer(),
                                Text(
                                  "19 Sep 2023",
                                  style: applyRobotoFont(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "The initial assessment shows no major issues. However, as a precaution, you need to consult an eye specialist for a complete evaluation.",
                              textAlign: TextAlign.left,
                              softWrap: true,
                              style: applyRobotoFont(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            )
                          ]),
                    ),
                    Positioned(
                      top: -15,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(0, 2),
                              blurRadius: 4,
                              spreadRadius: 0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(100),
                          color: AppColor.white,
                          border: Border.all(color: AppColor.white, width: 4),
                        ),
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(AppImages.raghavi),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: AppSize.height(context) * 0.14,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        color: AppColor.yellow,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: resultData.resultState.length,
                          itemBuilder: (BuildContext context, int index) {
                            resultData.setColors(index);

                            return Expanded(
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: AppSize.width(context) * 0.03,
                                    right: AppSize.width(context) * 0.078,
                                    top: AppSize.height(context) * 0.01),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: resultData.backColor,
                                ),
                                margin: index == 2
                                    ? const EdgeInsets.only(
                                        right: 0,
                                      )
                                    : EdgeInsets.only(
                                        right: AppSize.width(context) * 0.04),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: resultData.checkColor,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            resultData.icon,
                                            color: Colors.white,
                                            size: 15,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        resultData.resultState[index]['type']!,
                                        style: applyRobotoFont(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        resultData.resultState[index]['state']!,
                                        style: applyRobotoFont(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ]),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: AppSize.kmheight,
              ),
              Container(
                padding: const EdgeInsets.all(AppSize.kspadding),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(
                          2,
                          10,
                        ),
                        color: AppColor.primary.withOpacity(0.1),
                        blurRadius: 20,
                        spreadRadius: 5),
                  ],
                  borderRadius: BorderRadius.circular(AppSize.ksradius),
                ),
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  CircleAvatar(
                    backgroundColor: AppColor.primary.withOpacity(0.1),
                    child: SvgPicture.asset(
                      AppIcon.report,
                      height: 16,
                    ),
                  ),
                  SizedBox(
                    width: AppSize.width(context) * 0.05,
                  ),
                  Text(
                    "Eye Assessment Report",
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.chevron_right_sharp),
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Visit the nearest vision center for more details. Call the toll-free number to speak to our vision technician.',
                textAlign: TextAlign.left,
                softWrap: true,
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nearby Vision Centres",
                    style: applyFiraSansFont(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColor.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.kmheight,
              ),
              SingleChildScrollView(
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
                            borderRadius:
                                BorderRadius.circular(AppSize.ksradius),
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
              ),
              const SizedBox(
                height: AppSize.kmheight,
              ),
              ListTile(
                tileColor: AppColor.white,
                onTap: () async {},
                leading: SvgPicture.asset(
                  AppIcon.tollFree,
                ),
                trailing: SvgPicture.asset(
                  AppIcon.call,
                ),
                title: const Text("Toll Free Number"),
                subtitle: const Text(
                  "1800 1800 1800",
                  style: TextStyle(
                    color: AppColor.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: AppSize.kmheight,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          ref.read(patientTriageEyeScanProvider).printImage();
                          Navigator.of(context)
                              .popUntil((route) => route.isFirst);
                          ref.read(patientHomeProvider).changeIndex(0);
                        },
                        child: const Text("Home"),
                      ),
                    ),
                    const SizedBox(
                      width: AppSize.kmheight,
                    ),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .popUntil((route) => route.isFirst);
                        },
                        child: const Text("Test Again"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
