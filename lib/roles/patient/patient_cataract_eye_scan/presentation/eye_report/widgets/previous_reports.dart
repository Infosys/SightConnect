import 'package:avatars/avatars.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../pages/eye_scan_home_page.dart';
import '../../provider/eye_scan_provider.dart';

class PreviousReports extends ConsumerWidget {
  const PreviousReports({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(patientEyeScanProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Eye Scan - Reports",
          style: TextStyle(
              fontStyle: GoogleFonts.firaSans().fontStyle,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            model.resetImages();
            // Navigator.pop(context);
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color(0xffF7FAFF),
      ),
      body: SizedBox.expand(
        child: Container(
          color: const Color(0xffF7FAFF),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 26,
                ),
                ...model.previousReports
                    .map((e) => Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 11),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(e.date,
                                              style: TextStyle(
                                                fontStyle: GoogleFonts.roboto()
                                                    .fontStyle,
                                                fontSize: 12,
                                              )),
                                          Text(e.time,
                                              style: TextStyle(
                                                fontStyle: GoogleFonts.roboto()
                                                    .fontStyle,
                                                fontSize: 10,
                                                color: const Color(0xff888888),
                                              ))
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Avatar(
                                        shape: AvatarShape.circle(25),
                                        name: e.name,
                                        // backgroundImage:
                                        //     AssetImage('assets/images/user.png'),
                                        textStyle: const TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        e.name,
                                        style: TextStyle(
                                            fontStyle: GoogleFonts.firaSans()
                                                .fontStyle,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.more_vert,
                                      color: Color(0xff888888),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ))
                    .toList()
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(32.0),
        child: TextButton(
            style: TextButton.styleFrom(
              side: const BorderSide(
                color: Color(0xff296DF6),
              ),
              backgroundColor: const Color(0xff296DF6),
            ),
            onPressed: () {
              model.resetImages();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          EyeScanHomePage(userDetails: model.userDetails)));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Scan Again",
                    style: TextStyle(
                      fontStyle: GoogleFonts.roboto().fontStyle,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    )),
              ],
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
