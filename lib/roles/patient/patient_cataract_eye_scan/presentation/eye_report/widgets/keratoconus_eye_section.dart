import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/models/enums/eye.dart';
import '../../provider/eye_scan_provider.dart';

class KeratoconusEyeSection extends ConsumerWidget {
  const KeratoconusEyeSection({Key? key, this.eye}) : super(key: key);
  final Eye? eye;

  //route

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(patientEyeScanProvider);
    return
        // create a row with circle avatar and text
        Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: Image.file(
              eye == Eye.RIGHT_EYE
                  ? File(model.rightEye!.path)
                  : File(model.leftEye!.path),
            ).image,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      eye == Eye.RIGHT_EYE ? "Right Eye" : "Left Eye",
                      style: TextStyle(
                          fontStyle: GoogleFonts.firaSans().fontStyle,
                          fontSize: 18.0),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
