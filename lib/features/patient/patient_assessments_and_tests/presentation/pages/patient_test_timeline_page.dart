import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PatientTestTimelinePage extends StatelessWidget {
  const PatientTestTimelinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Row(
          children: [
            const Text("Timeline"),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppColor.green,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  "Routine Checkup",
                  style: applyRobotoFont(
                    fontSize: 11,
                    color: AppColor.white,
                  ),
                ),
              ),
            )
          ],
        ),
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Assessment ID: AT 010101",
              style: applyRobotoFont(
                fontSize: 16,
                color: AppColor.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              "Start Date: 19 Sep 2023, 10:20 AM",
              style: applyRobotoFont(
                fontSize: 12,
                color: AppColor.black,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color:
                              index.isEven ? AppColor.altGreen : AppColor.red,
                        ),
                      ),
                      child: index.isEven
                          ? const Icon(
                              Icons.check,
                              color: AppColor.altGreen,
                              size: 20,
                            )
                          : const Icon(
                              Icons.close,
                              color: AppColor.red,
                              size: 20,
                            ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "IVR Assessment",
                          style: applyRobotoFont(
                            fontSize: 14,
                            color: AppColor.black,
                          ),
                        ),
                        Text(
                          "10 Aug 2023, 10:20 AM",
                          style: applyRobotoFont(
                            fontSize: 12,
                            color: AppColor.grey,
                          ),
                        ),
                      ],
                    ),
                    subtitle: Text(
                      "Early Consultation Recommended",
                      style: applyRobotoFont(
                        fontSize: 12,
                        color: AppColor.grey,
                      ),
                    ),
                  );
                },
                itemCount: 10,
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 26,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index.isEven
                                ? AppColor.altGreen
                                : AppColor.lightGrey,
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
