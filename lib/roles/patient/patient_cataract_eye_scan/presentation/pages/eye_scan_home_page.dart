import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/models/User_details_model.dart';
import '../instruction_slides/scan_eye_homepage.dart';

class EyeScanHomePage extends StatelessWidget {
  const EyeScanHomePage({Key? key, this.userDetails}) : super(key: key);
  final UserDetails? userDetails;
  static String routeName = "/eyeScanHomePage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color(0xFFF7FAFF),
            appBar: AppBar(
              title: Text(
                "Steps to do the retinal scanning",
                style: TextStyle(
                    fontSize: 16,
                    fontStyle: GoogleFonts.firaSans().fontStyle,
                    fontWeight: FontWeight.bold),
              ),
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios_new_outlined),
                onPressed: () {
                  // Navigator.pop(context);
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
              ),
            ),
            body: InstructionSlides(userDetails: userDetails),);
  }
}
