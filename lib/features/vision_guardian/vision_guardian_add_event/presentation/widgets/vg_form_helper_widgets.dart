import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget customTextField(
    BuildContext context, TextEditingController controller, String label,
    {String? Function(String?)? validationFunction}) {
  final loc = context.loc!;
  return TextFormField(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    controller: controller,
    onChanged: (value) {
      controller.text = value;
    },
    validator: validationFunction ??
        (value) {
          if (value == null || value.isEmpty) {
            return "${loc.vgPleaseEnter} $label";
          }
          return null;
        },
    decoration: InputDecoration(
      label: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text(
          label,
        ),
      ),
      labelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}

Widget customTextFieldIcon(BuildContext context,
    TextEditingController controller, String label, Widget icon,
    {String? Function(String?)? validationFunction}) {
  final loc = context.loc!;
  return TextFormField(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    controller: controller,
    onChanged: (value) {
      controller.text = value;
    },
    validator: validationFunction ??
        (value) {
          if (value == null || value.isEmpty) {
            return "${loc.vgPleaseEnter} $label";
          }
          return null;
        },
    decoration: InputDecoration(
      label: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text(
          label,
        ),
      ),
      suffixIcon: IconButton(
        icon: icon,
        onPressed: () {},
      ),
      labelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}

Widget customTextFieldRows(
  BuildContext context,
  TextEditingController firstController,
  TextEditingController secondController,
  String firstLabel,
  String secondLabel,
) {
  final loc = context.loc!;
  return Row(
    children: [
      Expanded(
        child: TextFormField(
          controller: firstController,
          onChanged: (value) {
            firstController.text = value;
          },
          validator: (value) {
            if (value == null || value.isEmpty) {
              return loc.vgPleaseEnterField;
            }
            return null;
          },
          decoration: InputDecoration(
            label: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                firstLabel,
              ),
            ),
            labelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      const SizedBox(width: 10),
      Expanded(
        child: TextFormField(
          controller: secondController,
          onChanged: (value) {
            secondController.text = value;
          },
          decoration: InputDecoration(
            label: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                secondLabel,
              ),
            ),
            labelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget customTextFieldDatePicker({
  required TextEditingController dateController,
  required BuildContext context,
  required String label,
  required DateTime startDate,
  required Null Function(dynamic value) onDateChanged,
}) {
  final loc = context.loc!;
  return Expanded(
    child: TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: dateController,
      readOnly: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "${loc.vgPleaseEnter} $label";
        }
        return null;
      },
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: InkWell(
            onTap: () async {
              var dateTime = await selectDate(
                context,
                startDate,
              );
              onDateChanged(dateTime);
            },
            child: const Icon(
              Icons.calendar_month_outlined,
              color: Colors.grey,
            ),
          ),
        ),
        label: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            label,
          ),
        ),
        labelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}

Widget customTextFieldTimePicker(
    BuildContext context,
    TextEditingController timeController,
    String label,
    String? Function(String?)? customValidation) {
  final loc = context.loc!;
  return Expanded(
    child: TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      readOnly: true,
      controller: timeController,
      onChanged: (value) {
        timeController.text = value;
      },
      validator: customValidation ??
          (value) {
            if (value == null || value.isEmpty) {
              return "${loc.vgPleaseEnter} $label";
            }
            return null;
          },
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: InkWell(
            onTap: () async {
              var dateTime = await selectTime(context, timeController.text);
              timeController.text = dateTime.toString();
            },
            child: const Icon(
              Icons.watch_later_outlined,
              color: Colors.grey,
            ),
          ),
        ),
        label: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            label,
          ),
        ),
        labelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}

Widget customTextFieldRowsAgeDob(
  BuildContext context,
  TextEditingController firstController,
  TextEditingController secondController,
  String firstLabel,
  String secondLabel,
) {
  final loc = context.loc!;
  return Row(
    children: [
      Expanded(
        child: TextFormField(
          controller: firstController,
          onChanged: (value) {
            firstController.text = value;
          },
          decoration: InputDecoration(
            label: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                firstLabel,
              ),
            ),
            labelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      const SizedBox(width: 5),
      Text(loc.vgOr),
      const SizedBox(width: 5),
      Expanded(
        child: TextFormField(
          controller: secondController,
          onChanged: (value) {
            secondController.text = value;
          },
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: InkWell(
                onTap: () async {
                  var dateTime = await selectDate(context, DateTime(1900));
                  secondController.text = dateTime.toString();
                },
                child: const Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.grey,
                ),
              ),
            ),
            label: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                secondLabel,
              ),
            ),
            labelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    ],
  );
}

//date picker method that return date like 12 Nov 2021
Future<String?> selectDate(BuildContext context, DateTime startDate) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: startDate,
    firstDate: startDate,
    lastDate: DateTime(2100),
  );
  if (picked != null) {
    /*  return "${picked.year}-${picked.month}-${picked.day}"; */
    return DateFormat('d MMM yyyy').format(picked);
  } else {
    return null;
  }
}

Future<String?> selectTime(BuildContext context, previousValue) async {
  DateTime currentDateTime = DateTime.now();
  DateTime dateTime = DateTime.now();

  if (previousValue != "") {
    var values = previousValue.split(":");
    dateTime = DateTime(
      currentDateTime.year, // year
      currentDateTime.month, // month
      currentDateTime.day, // day
      int.parse(values[0]), // hour
      int.parse(values[1].split(" ")[0]), // minute
    );
  }

  final TimeOfDay? picked = await showTimePicker(
    context: context,
    initialTime: previousValue == ""
        ? TimeOfDay.now()
        : TimeOfDay.fromDateTime(dateTime),
  );
  if (picked != null) {
    return "${picked.hour}:${picked.minute < 10 ? '0${picked.minute}' : picked.minute} ${picked.period.name.toUpperCase()}";
  } else {
    return previousValue;
  }
}
