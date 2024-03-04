import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../providers/appointment_view_model_provider.dart';
import '../providers/book_appointment_provider.dart';

class AppointmentDateSelector extends HookConsumerWidget {
  const AppointmentDateSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateTime currentDate = DateTime.now();
    List<DateTime> dates = [];

    for (var i = 0; i < 31; i++) {
      var date = currentDate.add(Duration(days: i));
      dates.add(date);
    }

    var scrollController = useScrollController();

    var isSelectedDate = useState<int>(0);

    var model = ref.watch(bookAppointmentProvider);
    // if (isSelectedDate.value == 0) {
    //   model.setSelectedDate(currentDate);
    // }

    return Container(
      padding: const EdgeInsets.all(8),
      height: AppSize.height(context) * 0.16,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                scrollController.animateTo(
                  scrollController.offset - 100,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
              },
              child: CircleAvatar(
                  maxRadius: 15,
                  backgroundColor: AppColor.altGrey.withOpacity(0.2),
                  child: const Icon(
                    Icons.chevron_left,
                    color: AppColor.grey,
                  )),
            ),
            SizedBox(
              width: AppSize.width(context) * 0.68,
              child: ListView.builder(
                controller: scrollController,
                scrollDirection: Axis.horizontal,
                itemCount: dates.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      isSelectedDate.value = index;
                      model.setSelectedDate(dates[index]);
                      ref
                          .read(appointmentViewModelProvider)
                          .sendAppointmentDetails();
                    },
                    child: DateWidget(
                      dates[index],
                      context,
                      dates[index] == currentDate,
                      isSelectedDate.value == index,
                    ),
                  );
                },
              ),
            ),
            InkWell(
              onTap: () {
                scrollController.animateTo(
                  scrollController.offset + 100,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
              },
              child: CircleAvatar(
                  maxRadius: 15,
                  backgroundColor: AppColor.altGrey.withOpacity(0.2),
                  child: const Icon(
                    Icons.chevron_right,
                    color: AppColor.grey,
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget DateWidget(DateTime dates, context, bool isToday, bool isSelected) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(firstTwoLetters(dates.weekday.toString())),
          SizedBox(
            height: AppSize.height(context) * 0.02,
          ),
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: isToday == true && isSelected == false
                  ? AppColor.white
                  : isSelected == true
                      ? AppColor.primary
                      : isSelected == true && isToday == true
                          ? AppColor.primary
                          : AppColor.white,
              shape: BoxShape.circle,
              border: Border.all(
                width: 2,
                color: isToday
                    ? AppColor.lightBlue
                    : isSelected
                        ? AppColor.primary
                        : AppColor.white,
              ),
            ),
            child: Text(
              dates.day.toString(),
              style: applyFiraSansFont(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: isSelected ? AppColor.white : AppColor.black,
              ),
            ),
          ),
          SizedBox(
            height: AppSize.height(context) * 0.02,
          ),
          isToday
              ? Text(
                  "Today",
                  style: applyRobotoFont(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                )
              : const Text(""),
        ],
      ),
    );
  }

  String firstTwoLetters(String day) {
    switch (day) {
      case "1":
        return "Mo";
      case "2":
        return "Tu";
      case "3":
        return "We";
      case "4":
        return "Th";
      case "5":
        return "Fr";
      case "6":
        return "Sa";
      case "7":
        return "Su";
      default:
        return "Mo";
    }
  }
}
