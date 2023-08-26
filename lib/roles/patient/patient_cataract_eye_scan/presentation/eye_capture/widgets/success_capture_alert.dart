import 'dart:ui';
import 'package:eye_care_for_all/shared/extensions/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/models/enums/eye.dart';
import '../../../data/models/enums/scan_type.dart';
import '../../provider/eye_scan_provider.dart';
import '../detect_camera.dart';

void successCaptureAlert(BuildContext context, Eye eye) {
  showGeneralDialog(
    barrierDismissible: false,
    barrierLabel: '',
    barrierColor: Colors.black38,
    transitionDuration: const Duration(milliseconds: 500),
    pageBuilder: (ctx, anim1, anim2) => AlertDialog(
      title: Image.asset(
        'assets/images/check.png',
        height: 40,
        width: 40,
        color: const Color(0xff22BF85),
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "${eye.toString().split('_')[0].split('.')[1].toLowerCase().capitalize()} Eye Scan complete",
            style: TextStyle(
                fontStyle: GoogleFonts.firaSans().fontStyle, fontSize: 20),
          ),
          const SizedBox(height: 16),
          eye == Eye.RIGHT_EYE
              ? Text(
                  'Proceed with Left eye scan',
                  style: TextStyle(
                      fontStyle: GoogleFonts.roboto().fontStyle, fontSize: 14),
                )
              : Text(
                  "Proceed to report processing",
                  style: TextStyle(
                      fontStyle: GoogleFonts.roboto().fontStyle, fontSize: 14),
                )
        ],
      ),
      elevation: 2,
      actionsAlignment: MainAxisAlignment.end,
      actions: [
        Consumer(
          builder: (context, ref, child) => TextButton(
            child: Text('Rescan',
                style: TextStyle(
                    fontStyle: GoogleFonts.roboto().fontStyle,
                    fontSize: 14,
                    color: const Color(0xff296DF6))),
            onPressed: () {
              ref.watch(patientEyeScanProvider).resetEyeImage(eye);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetectCamera(
                            eye: eye,
                          )));
            },
          ),
        ),
        Consumer(
          builder: (context, ref, child) => TextButton(
              onPressed: eye == Eye.RIGHT_EYE
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetectCamera(
                            eye: Eye.LEFT_EYE,
                          ),
                        ),
                      );
                    }
                  : () async {
                      await ref.watch(patientEyeScanProvider).setScanType();
                      ref.watch(patientEyeScanProvider).scanType ==
                              ScanType.Cataract
                          ? ref.watch(patientEyeScanProvider).processModel()
                          : ref
                              .watch(patientEyeScanProvider)
                              .processKeratoconus();
                      // context.read<EyeScanProvider>().fakeProcessModel();
                      Navigator.pushNamed(context, '/reportEyeSection');
                      // Navigator.push(context, MaterialPageRoute(builder: (_) => EyeScanReport()));
                      // Navigator.pop(context);
                    },
              child: Text(
                'Ok',
                style: TextStyle(
                    fontStyle: GoogleFonts.roboto().fontStyle,
                    fontSize: 14,
                    color: const Color(0xff296DF6)),
              )),
        ),
      ],
    ),
    transitionBuilder: (ctx, anim1, anim2, child) => BackdropFilter(
      filter:
          ImageFilter.blur(sigmaX: 4 * anim1.value, sigmaY: 4 * anim1.value),
      child: FadeTransition(
        opacity: anim1,
        child: child,
      ),
    ),
    context: context,
  );
}
