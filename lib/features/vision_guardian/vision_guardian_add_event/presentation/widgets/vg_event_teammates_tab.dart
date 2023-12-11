import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_color.dart';

class EventTeammatesTab extends StatelessWidget {
  const EventTeammatesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Teammates(2)",
              style: applyRobotoFont(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColor.black,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.ksradius),
                color: AppColor.white,
                border: Border.all(
                  color: AppColor.grey.withOpacity(0.5),
                ),
              ),
              padding: const EdgeInsets.all(AppSize.kspadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColor.grey.withOpacity(0.8),
                        child: Image.asset(
                          "assets/images/doctor.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ritu Gupta",
                            style: applyFiraSansFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColor.black,
                            ),
                          ),
                          SizedBox(
                            width: AppSize.width(context) * 0.7,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "ID 344456",
                                    style: applyRobotoFont(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.grey,
                                    ),
                                  ),
                                ),
                                const InkWell(
                                  child: Icon(
                                    Icons.edit_outlined,
                                    color: AppColor.grey,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const InkWell(
                                  child: Icon(
                                    Icons.delete_outline,
                                    color: AppColor.red,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "+91 8876543321",
                            style: applyRobotoFont(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColor.black,
                            ),
                          ),
                        ],
                      )
                    ],
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
