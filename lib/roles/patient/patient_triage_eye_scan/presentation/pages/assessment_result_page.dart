import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssessmentResultPage extends StatelessWidget {
  const AssessmentResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    List nearByVisionCenter = [
      {
        "name": "Dr Kommareddy Raja Ram Mohan Rao Eye Centre",
        "location": "Near Gudavalli Village, Cherukupalli, Guntur",
        "phone": "99634 78759"
      },
      {
        "name": "Edward and Soona Brown Eye Centre",
        "location": "Pindugurala Road, Sattanapalli, Guntur",
        "phone": "99634 78760"
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assessment Result"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.download_outlined,
              color: AppColor.kGrey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share_outlined,
              color: AppColor.kGrey,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: Column(
          children: [
            const SizedBox(height: AppSize.kmheight),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.klradius),
              ),
              color: const Color(0xff333333),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 160,
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(
                            AppSize.kmpadding,
                            AppSize.kmpadding,
                            AppSize.kmpadding,
                            0,
                          ),
                          decoration: BoxDecoration(
                            color: AppColor.kWhite,
                            borderRadius:
                                BorderRadius.circular(AppSize.klradius),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.kPrimary.withOpacity(0.2),
                                blurRadius: 50,
                              ),
                            ],
                          ),
                          height: 180,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "All your assessments are done!",
                                style: applyFiraSansFont(
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                height: AppSize.ksheight,
                              ),
                              Text(
                                "For details and insights around the assessment, visit the nearest vision centre, or call our toll-free number to connect with our vision technician.",
                                textAlign: TextAlign.center,
                                style: applyRobotoFont(
                                  fontSize: 14,
                                  color: const Color(0xff333333),
                                ),
                              ),
                              const SizedBox(
                                height: AppSize.klheight,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: -40,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(200),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: SvgPicture.asset(
                                AppIcon.triageTopIcon,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppSize.kmheight,
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
                      color: AppColor.kPrimary,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.kmheight,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: nearByVisionCenter
                    .map((e) => Container(
                          padding: const EdgeInsets.all(
                            AppSize.kmpadding,
                          ),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppColor.kWhite,
                            borderRadius:
                                BorderRadius.circular(AppSize.ksradius),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.kPrimary.withOpacity(0.1),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: Column(
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
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
            const SizedBox(
              height: AppSize.kmheight,
            ),
            ListTile(
              tileColor: AppColor.kWhite,
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
                  color: AppColor.kBlack,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: AppSize.kmheight,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
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
    );
  }
}
