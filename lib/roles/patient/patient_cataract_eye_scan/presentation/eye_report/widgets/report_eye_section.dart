import 'dart:io';

import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/presentation/provider/eye_scan_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/models/enums/eye.dart';

class ReportEyeSection extends ConsumerWidget {
  const ReportEyeSection({Key? key, this.eye, this.status, this.percentage})
      : super(key: key);
  final Eye? eye;
  final String? status;
  final num? percentage;
  //route

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(patientEyeScanProvider);
    var width = MediaQuery.of(context).size.width;
    return
        // create a row with circle avatar and text
        Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: Image.file(
            eye == Eye.RIGHT_EYE
                ? File(model.rightEye?.path ?? "assets/images/right_eye.png")
                : File(model.leftEye?.path ?? "assets/images/left_eye.png"),
          ).image,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: width / 1.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          eye == Eye.RIGHT_EYE ? "Right Eye" : "Left Eye",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  fontStyle: GoogleFonts.firaSans().fontStyle,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.0),
                        ),
                        Text(
                          "  $status",
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontStyle: GoogleFonts.firaSans().fontStyle,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.0,
                                    color: status == "Cataract"
                                        ? const Color(0xffEF5757)
                                        : const Color(0xff22BF85),
                                  ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      "$percentage/20",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontStyle: GoogleFonts.firaSans().fontStyle,
                            color: status == "Cataract"
                                ? const Color(0xffEF5757)
                                : const Color(0xff22BF85),
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 230,
                child: Text(
                  status == "Cataract"
                      ? "There is loss of transparency of the lens of the left eye. Fogging is detected."
                      : "No loss of transparency of the lens of the eye. No fogging is detected",
                  style: TextStyle(
                      fontStyle: GoogleFonts.roboto().fontStyle, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
