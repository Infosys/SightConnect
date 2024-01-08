import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VgProfilePersonalDetailsCard extends StatelessWidget {
  const VgProfilePersonalDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Personal Details",
                style: applyFiraSansFont(),
              ),
              const SizedBox(
                height: AppSize.kmheight,
              ),
              Text(
                "HPR ID",
                style: applyRobotoFont(fontSize: 12, color: AppColor.grey),
              ),
              Text(
                "1234567890123456",
                style: applyRobotoFont(fontSize: 14, color: AppColor.darkGrey),
              ),
              const SizedBox(
                height: AppSize.ksheight,
              ),
              Text(
                "Email ID",
                style: applyRobotoFont(fontSize: 12, color: AppColor.grey),
              ),
              Text(
                "priyarajarajan_r01@abcde.com",
                style: applyRobotoFont(fontSize: 14, color: AppColor.darkGrey),
              ),
              const SizedBox(
                height: AppSize.ksheight,
              ),
              Text(
                "Educational Qualification",
                style: applyRobotoFont(fontSize: 12, color: AppColor.grey),
              ),
              Text(
                "Undergraduate",
                style: applyRobotoFont(fontSize: 14, color: AppColor.darkGrey),
              ),
              const Divider(),
              Text(
                "Address and Door Number",
                style: applyRobotoFont(fontSize: 12, color: AppColor.grey),
              ),
              Text(
                "12-2, Birla Mandir Road, Adarsh Nagar",
                style: applyRobotoFont(fontSize: 14, color: AppColor.darkGrey),
              ),
              const SizedBox(
                height: AppSize.ksheight,
              ),
              Wrap(
                spacing: AppSize.width(context) / 4,
                runSpacing: 8.0,
                verticalDirection: VerticalDirection.down,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Subdistrict",
                          style: applyRobotoFont(
                              fontSize: 12, color: AppColor.grey),
                        ),
                        Text(
                          "Sector 51  ",
                          style: applyRobotoFont(
                              fontSize: 14, color: AppColor.darkGrey),
                        ),
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "District",
                          style: applyRobotoFont(
                              fontSize: 12, color: AppColor.grey),
                        ),
                        Text(
                          "Guntur",
                          style: applyRobotoFont(
                              fontSize: 14, color: AppColor.darkGrey),
                        ),
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "City",
                          style: applyRobotoFont(
                              fontSize: 12, color: AppColor.grey),
                        ),
                        Text(
                          "Hyderabad",
                          style: applyRobotoFont(
                              fontSize: 14, color: AppColor.darkGrey),
                        ),
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "State",
                          style: applyRobotoFont(
                              fontSize: 12, color: AppColor.grey),
                        ),
                        Text(
                          "Telangana",
                          style: applyRobotoFont(
                              fontSize: 14, color: AppColor.darkGrey),
                        ),
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pincode",
                          style: applyRobotoFont(
                              fontSize: 12, color: AppColor.grey),
                        ),
                        Text(
                          "500004",
                          style: applyRobotoFont(
                              fontSize: 14, color: AppColor.darkGrey),
                        ),
                      ]),
                ],
              )
            ],
          )),
    );
  }
}
