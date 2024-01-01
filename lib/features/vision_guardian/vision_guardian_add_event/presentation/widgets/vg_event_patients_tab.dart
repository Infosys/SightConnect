import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EventPatientsTab extends ConsumerWidget {
  const EventPatientsTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text("data");
  }
}



/*  ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: model.length,
      itemBuilder: (context, index) {
        var data = model[index];
        return  Container(
    padding:const EdgeInsets.all(AppSize.kspadding),
    width: double.infinity,
    decoration: BoxDecoration(
      color: AppColor.white,
      boxShadow: applyLightShadow(),
      borderRadius: const BorderRadius.all(
        Radius.circular(AppSize.kmradius - 5),
      ),
    ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.ksradius),
            child: Container(
              padding: const EdgeInsets.all(AppSize.kspadding),
              width: Responsive.isMobile(context)
                  ? AppSize.width(context) * 0.9
                  : AppSize.width(context) * 0.6,
              color: AppColor.white,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: AppColor.grey.withOpacity(0.8),
                    child: Image.asset(
                      data["image"] ?? "",
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(width: AppSize.kswidth),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: Responsive.isMobile(context)
                            ? AppSize.width(context) * 0.74
                            : AppSize.width(context) * 0.6,
                        child: Row(
                          children: [
                            Text(
                              data["name"],
                              style: applyRobotoFont(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColor.black,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              data["urgency"],
                              style: applyRobotoFont(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: AppColor.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: AppSize.ksheight),
                      SizedBox(
                        width: Responsive.isMobile(context)
                            ? AppSize.width(context) * 0.74
                            : AppSize.width(context) * 0.6,
                        child: Row(
                          children: [
                            Text(
                              data["gender"] + ', ' + data["age"],
                              style: applyRobotoFont(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColor.grey,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              data["reportDate"],
                              style: applyRobotoFont(
                                fontSize: 12,
                                color: AppColor.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: AppSize.ksheight / 3),
                          ],
                        ),
                      ),
                      const SizedBox(height: AppSize.ksheight),
                      SizedBox(
                        width: Responsive.isMobile(context)
                            ? AppSize.width(context) * 0.74
                            : AppSize.width(context) * 0.6,
                        child: Row(
                          children: [
                            Text(
                              data["assessmentId"],
                              style: applyRobotoFont(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColor.grey,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              data["reportTime"],
                              style: applyRobotoFont(
                                fontSize: 12,
                                color: AppColor.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: AppSize.ksheight / 3),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }, separatorBuilder: (BuildContext context, int index) { 
        return const SizedBox(height: AppSize.ksheight,);
       },
    );
  } */

