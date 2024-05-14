import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/technician/dashboard/data/fake_data_source.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TechnicianHomeAnalytics extends StatelessWidget {
  const TechnicianHomeAnalytics({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SizedBox(
            height: AppSize.height(context) * 0.2,
            width: AppSize.width(context) * 0.17,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: TechnicianFakeDataSource.getTechnicians().length,
              itemBuilder: (BuildContext context, int index) {
                var data = TechnicianFakeDataSource.getTechnicians()[index];
                return Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    color: AppColor.lightBlue.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(data.keys.first,
                          style: applyFiraSansFont(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                "${data.values.first['Total']}",
                                style: applyRobotoFont(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.altGreen),
                              ),
                              Text(
                                data.values.first.keys.first,
                                style: applyRobotoFont(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.grey),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: AppSize.width(context) * 0.05,
                          ),
                          Column(
                            children: [
                              Text(
                                "${data.values.first['Ongoing']}",
                                style: applyRobotoFont(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.red),
                              ),
                              Text(
                                data.values.first.keys.last,
                                style: applyRobotoFont(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.grey),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
