import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PreliminaryAssessmentVisionCenter extends HookConsumerWidget {
  const PreliminaryAssessmentVisionCenter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var visonCenter = useState([]);

    useEffect(() {
      visonCenter.value = [
        {"type": "LVPEI Eye Institute - Chudi Bazaar", "checked": true},
        {"type": "LVPEI Eye Institute - Gachibowli", "checked": false},
        {"type": "LVPEI Eye Institute - Kala Pahar", "checked": false},
        {"type": "LVPEI Eye Institute - Gachibowli", "checked": false},
        {"type": "LVPEI Eye Institute - Kala Pahar", "checked": false},
      ];

      return null;
    }, []);

    var firstcontroller = ScrollController();
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(AppSize.kmpadding),
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.lightGrey),
          color: AppColor.white,
          borderRadius: BorderRadius.circular(AppSize.ksradius),
          boxShadow: const [
            BoxShadow(
              color: AppColor.lightGrey, //New
              blurRadius: AppSize.ksradius / 2,
              spreadRadius: AppSize.ksradius / 8,
            )
          ],
        ),
        child: Wrap(
          direction: Axis.vertical,
          children: [
            Text(
              "Vision Center",
              style: applyFiraSansFont(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: AppSize.klheight,
            ),
            Wrap(spacing: AppSize.klwidth , children: [
              Container(
                width: AppSize.klwidth * 15,
                padding: const EdgeInsets.all(AppSize.kspadding + 2),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.lightGrey),
                  borderRadius: BorderRadius.circular(AppSize.kmradius),
                ),
                child: Container(
                    width: AppSize.klwidth * 15,
                    height: AppSize.klheight * 8,
                    child: Scrollbar(
                      thumbVisibility: true,
                      controller: firstcontroller,
                      child: ListView.builder(
                          controller: firstcontroller,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: AppSize.kspadding - 3,
                                  top: AppSize.kspadding - 3,
                                  bottom: AppSize.kspadding - 3,
                                  right: AppSize.kmpadding + 4),
                              child: InkWell(
                                onTap: () {
                                  var newMap = [...visonCenter.value];
                                  for (var element in newMap) {
                                    element["checked"] = false;
                                  }
                                  newMap[index]["checked"] =
                                      !newMap[index]["checked"];
                                  visonCenter.value = newMap;
                                  print(visonCenter);
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: visonCenter.value[index]
                                                      ["checked"] ==
                                                  false
                                              ? AppColor.lightGrey
                                              : AppColor.blue,
                                          width: 2),
                                      borderRadius: BorderRadius.circular(
                                          AppSize.ksradius),
                                    ),
                                    padding: const EdgeInsets.all(
                                        AppSize.kspadding + 3),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(visonCenter.value[index]["type"],
                                        style: applyRobotoFont(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                        )
                                        ),
                                        
                                        Icon(
                                          
                                          Icons.check_circle,
                                          size: 10,
                                          color: visonCenter.value[index]
                                                      ["checked"] ==
                                                  true
                                              ? AppColor.green
                                              : AppColor.grey,
                                        )
                                      ],
                                    )),
                              ),
                            );
                          }),
                    )),
              ),
              Wrap(
                spacing: AppSize.kmheight,
                direction: Axis.vertical,
                children: [
                  Text(
                    "LVPEI Eye Institute",
                    style: applyFiraSansFont(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Wrap(
                    spacing: AppSize.kmwidth,
                    direction: Axis.horizontal,
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(
                        width: AppSize.klwidth * 15,
                        child: Text(
                            "14,Nagar Khana Hanuman Temple Road,Begum Bazar Chatri,Gowsala Nagar,Chudi Bazaar,Hyderabad,Telegana 500012"),
                      ),
                    ],
                  ),
                  const Wrap(
                    spacing: AppSize.kmwidth,
                    direction: Axis.horizontal,
                    children: [
                      Icon(Icons.phone_outlined),
                      SizedBox(
                        width: AppSize.klwidth * 18,
                        child: Text("9963478759"),
                      ),
                    ],
                  ),
                  const Wrap(
                    spacing: AppSize.kmwidth,
                    direction: Axis.horizontal,
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(
                        width: AppSize.klwidth * 18,
                        child: Text("Monday - Friday 10:00 AM - 5:00 PM"),
                      ),
                    ],
                  )
                ],
              ),
            ]),
          ],
        ));
  }
}
