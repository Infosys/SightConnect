import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:avatars/avatars.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/models/enums/eye.dart';
import '../../data/models/enums/scan_type.dart';
import '../pages/eye_scan_home_page.dart';
import '../provider/eye_scan_provider.dart';
import 'widgets/keratoconus_eye_section.dart';
import 'widgets/previous_reports.dart';
import 'widgets/report_eye_section.dart';

class EyeScanReport extends ConsumerWidget {
  const EyeScanReport({Key? key}) : super(key: key);
  static const String routeName = "/reportEyeSection";
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(patientEyeScanProvider);
    var generalAdvice = [
      "1. Make sure your eyeglasses or contact lenses are the most accurate prescription possible",
      "2. Use a magnifying glass to read if you need additional help reading",
      "3. Improve the lightning in your home with more or brighter lamps",
      "4. When you go outside during the day, wear sunglasses or a broad-brimmed hat to reduce glare",
      "5. Limit your night driving",
      "6. Consider sugery when vision deteriorates and starts affecting your daily activities"
    ];
    var watchWhatYouEat = [
      "Nutrients that must be a part of your daily diet to support a good eye function :",
      "Vitamin A",
      "Vitamin C",
      "Vitamin E",
      "Vitamin B6, B9, B12",
      "Riboflavin",
      "Niacin"
    ];
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Eye Scan - Reports",
            style: TextStyle(
              fontStyle: GoogleFonts.firaSans().fontStyle,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
              model.resetImages();
            },
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child:
                      Image.asset("assets/images/iView_scan.png", scale: 1.2),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    // model.scanType ==
                    //         ScanType.Keratoconus
                    //     ? Navigator.push(context,
                    //         MaterialPageRoute(builder: (_) => ReportPdf()))
                    //     : null;
                  },
                  child: Image.asset("assets/images/download2.png", scale: 1.2),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset("assets/images/share2.png", scale: 1.2),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ]),
      body: model.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              color: const Color(0xffF7FAFF),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        //rounded container border
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffC9DAFD),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Avatar(
                                  shape: AvatarShape.circle(25),
                                  name:
                                      model.userDetails!.patientName.toString(),
                                  // backgroundImage:
                                  //     AssetImage('assets/images/user.png'),
                                  textStyle: const TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      model.userDetails!.patientName.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontStyle: GoogleFonts.firaSans()
                                                  .fontStyle,
                                              fontSize: 16),
                                    ),
                                    Text(
                                      "${model.userDetails!.gender.toString()}, ${model.userDetails!.patientAge.toString()} years",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontStyle:
                                              GoogleFonts.roboto().fontStyle,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                            //rounded container border
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Scan Date : ${model.formatedDate}",
                                      style: GoogleFonts.roboto(),
                                    ),
                                    Text("${model.formatedTime}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                              color: Colors.grey,
                                              fontStyle: GoogleFonts.roboto()
                                                  .fontStyle,
                                            )),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                model.scanType == ScanType.Cataract
                                    ? ReportEyeSection(
                                        eye: Eye.RIGHT_EYE,
                                        status: model.rightEyeStatus,
                                        percentage: model.rightEyeScore,
                                      )
                                    : const KeratoconusEyeSection(
                                        eye: Eye.RIGHT_EYE,
                                      ),
                                model.scanType == ScanType.Cataract
                                    ? ReportEyeSection(
                                        eye: Eye.LEFT_EYE,
                                        status: model.leftEyeStatus,
                                        percentage: model.leftEyeScore,
                                      )
                                    : const KeratoconusEyeSection(
                                        eye: Eye.LEFT_EYE,
                                      ),
                              ]),
                            ))),
                    //get an expert's help
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                          //rounded container border
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Get an Expert's Help",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              GoogleFonts.firaSans().fontStyle),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Consult with the best Eye Specialist in your area for the best diagnosis",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontStyle:
                                              GoogleFonts.roboto().fontStyle),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // rounded button
                                        InkWell(
                                          onTap: () {
                                            // showModalBottomSheet(
                                            //     showDragHandle: true,
                                            //     context: context,
                                            //     backgroundColor: Colors.white,
                                            //     barrierColor: Colors.black
                                            //         .withOpacity(0.6),
                                            //     builder: (_) {
                                            //       return DoctorsList(
                                            //           doctors: FakeDataSource
                                            //               .doctors);
                                            //     });
                                          },
                                          child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: const Color(0xff296DF6),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Center(
                                                    child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 8.0),
                                                  child: Text(
                                                    // context
                                                    //         .watch<
                                                    //             PatientsReportsProvider>()
                                                    //         .isKeretoconusReportSent
                                                    //     ? "Reshare with Doctor"
                                                    //     :
                                                    "Share with Doctor",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontStyle:
                                                            GoogleFonts.roboto()
                                                                .fontStyle,
                                                        fontSize: 14),
                                                  ),
                                                )),
                                              )),
                                        ),

                                        Row(
                                          children: [
                                            Image.asset(
                                              "assets/images/trend.png",
                                              scale: 1.5,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Text(
                                              "1k+ got helped so far",
                                              style: TextStyle(
                                                  color: Color(0xff22BF85),
                                                  fontSize: 14),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ]))),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          model.scanType == ScanType.Keratoconus
                              ? Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: InkWell(
                                    onTap: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (_) => ReportPdf()));
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              color: const Color(0xff296DF6)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Center(
                                              child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                    Icons.file_copy_outlined,
                                                    color: Color(0xff296DF6)),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  "View Report",
                                                  style: TextStyle(
                                                      color: const Color(
                                                          0xff296DF6),
                                                      fontStyle:
                                                          GoogleFonts.roboto()
                                                              .fontStyle,
                                                      fontSize: 14),
                                                ),
                                              ],
                                            ),
                                          )),
                                        )),
                                  ),
                                )
                              //outlined rounded button
                              : InkWell(
                                  onTap: () {
                                    model.resetImages();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EyeScanHomePage(
                                                    userDetails:
                                                        model.userDetails)));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              color: const Color(0xff296DF6)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Center(
                                              child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  "assets/images/iView_scan.png",
                                                  scale: 1.5,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  "Scan Again",
                                                  style: TextStyle(
                                                      color: const Color(
                                                          0xff296DF6),
                                                      fontStyle:
                                                          GoogleFonts.roboto()
                                                              .fontStyle,
                                                      fontSize: 14),
                                                ),
                                              ],
                                            ),
                                          )),
                                        )),
                                  ),
                                ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const PreviousReports(),
                                ),
                              );
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xff296DF6)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(
                                        child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        "View Previous Reports",
                                        style: TextStyle(
                                            color: const Color(0xff296DF6),
                                            fontStyle:
                                                GoogleFonts.roboto().fontStyle,
                                            fontSize: 14),
                                      ),
                                    )),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        //rounded container border

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "General Advice :",
                                  style: TextStyle(
                                      fontStyle:
                                          GoogleFonts.firaSans().fontStyle,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ...generalAdvice
                                    .map(
                                      (e) => Text(
                                        e,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontStyle:
                                                GoogleFonts.roboto().fontStyle),
                                      ),
                                    )
                                    .toList()
                              ]),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        //rounded container border

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Watch what you eat",
                                  style: TextStyle(
                                      fontStyle:
                                          GoogleFonts.firaSans().fontStyle,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ...watchWhatYouEat
                                    .map(
                                      (e) => Text(
                                        e,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontStyle:
                                                GoogleFonts.roboto().fontStyle),
                                      ),
                                    )
                                    .toList()
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
