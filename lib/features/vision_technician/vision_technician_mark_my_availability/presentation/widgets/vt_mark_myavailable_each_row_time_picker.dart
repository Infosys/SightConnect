import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/providers/mark_my_availability_helper_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class VtMarkMyAvailableEachRowTimePicker extends ConsumerWidget {
  const VtMarkMyAvailableEachRowTimePicker({
    super.key,
    required this.disable,
    required this.dayAvailabilityindex,
    required this.index,
    required this.dropDownNo,
  });

  final bool disable;
  final int dayAvailabilityindex;
  final int index;
  final int dropDownNo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var dropdownlist = ref
        .read(markMyAvailabilityHelperProvider)
        .markMyAvailabilityList[dayAvailabilityindex];
    var dropdownvalue = (dropdownlist.time)[index][dropDownNo];

    TextEditingController controller =
        TextEditingController(text: dropdownvalue);
    var hour = (dropdownvalue.split(':')[0]);
    var minute = (dropdownvalue.split(':')[1]).split(' ')[0];
    return Flexible(
      child: TextFormField(
        enabled: disable ? true : false,
        readOnly: true,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter Time';
          }
          return null;
        },
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              showTimePicker(
                context: context,
                initialTime:
                    TimeOfDay(hour: int.parse(hour), minute: int.parse(minute)),
              ).then((selectedDate) {
                if (selectedDate != null) {
                  var startingValue = dropdownlist.time[index][0];

                  var time1 = dropdownlist.time[index][0];
                  var time2 = selectedDate;

                  var format = DateFormat('h:mm a');
                  var startTimeDropDown = format.parse(time1);
                  var endTimeDropDown =
                      format.parse((selectedDate.format(context)));
                  var difference =
                      endTimeDropDown.difference(startTimeDropDown);
                  var differenceInHours = difference.inHours;
                  var differenceMinutes = difference.inMinutes;

                  if (differenceInHours <= 0) {
                    return null;
                  }

                  controller.text = selectedDate.format(context);
                  ref
                      .read(markMyAvailabilityHelperProvider.notifier)
                      .updatedropdown(dayAvailabilityindex, index,
                          controller.text, dropDownNo);
                }
              });
            },
            icon: const Icon(Icons.expand_more),
          ),
        ),
      ),
    );
  }
}
