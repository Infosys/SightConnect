import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/widgets/vt_each_row_day.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VTEachDayAvailability extends HookConsumerWidget {
  VTEachDayAvailability({super.key, this.dayAvailability});

  var dayAvailability;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var dayAvailabilityState = useState(dayAvailability);

    void removeDayAvailability(int index) {
      print("object");
      print(index);
      Map newstate = {...dayAvailabilityState.value};

      newstate["time"].removeAt(index);
      dayAvailabilityState.value = newstate;
      print(dayAvailabilityState.value);
    }

    return Wrap(
      runSpacing: AppSize.kmheight,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Transform.scale(
                  scale: 1.0,
                  child: Checkbox(
                      value: dayAvailabilityState.value["checked"],
                      onChanged: (value) {
                        Map newstate = {...dayAvailabilityState.value};
                        newstate["checked"] = !newstate["checked"];
                        dayAvailabilityState.value = newstate;
                      }),
                ),
                SizedBox(
                  width: AppSize.klwidth * 5,
                  child: Text(
                    dayAvailabilityState.value["day"],
                    style: applyRobotoFont(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
            const SizedBox(
              width: AppSize.kmwidth,
            ),
            Expanded(
              child: Column(
                children: [
                  ListView(shrinkWrap: true, children: [
                    ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return VTEachRow(
                            functionhandler: removeDayAvailability,
                            index: index,
                            daydata: dayAvailabilityState.value);
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: AppSize.kmheight,
                        );
                      },
                      itemCount: dayAvailabilityState.value["time"].length,
                    ),
                  ]),
                  const SizedBox(
                    height: AppSize.kmheight,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: const Color.fromARGB(255, 186, 183, 183)),
                        color: dayAvailabilityState.value["checked"] == false
                            ? Color.fromARGB(255, 225, 220, 220)
                            : Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        disabledColor: AppColor.white,
                        icon: Icon(
                          Icons.add,
                          color: AppColor.grey,
                        ),
                        onPressed: dayAvailabilityState.value["checked"] ==
                                false
                            ? null
                            : () {
                                Map newstate = {...dayAvailabilityState.value};

                                newstate["time"].add([""]);
                                dayAvailabilityState.value = newstate;
                                print(dayAvailabilityState.value);
                              },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: AppSize.klheight,
        ),
      ],
    );
  }
}
