import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget customTextField(
  TextEditingController controller,
  String label,
) {
  return TextFormField(
    controller: controller,
    onChanged: (value) {
      controller.text = value;
    },
    validator: (value) {
      if (value == null || value.isEmpty) {
        return "Please enter $label";
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

Widget customTextFieldIcon(
    TextEditingController controller, String label, Widget icon) {
  return TextFormField(
    controller: controller,
    onChanged: (value) {
      controller.text = value;
    },
    validator: (value) {
      if (value == null || value.isEmpty) {
        return "Please enter $label";
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
    TextEditingController firstController,
    TextEditingController secondController,
    String firstLabel,
    String secondLabel) {
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
              return "Please enter field";
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

Widget customTextFieldDatePicker(
    TextEditingController dateController, String label, BuildContext context) {
  return Expanded(
    child: TextFormField(
      controller: dateController,
      onChanged: (value) {
        dateController.text = value;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter $label";
        }
        return null;
      },
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: InkWell(
            onTap: () async {
              var dateTime = await selectDate(context);
              dateController.text = dateTime.toString();
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
    TextEditingController timeController, String label, BuildContext context) {
  return Expanded(
    child: TextFormField(
      controller: timeController,
      onChanged: (value) {
        timeController.text = value;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter $label";
        }
        return null;
      },
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: InkWell(
            onTap: () async {
              var dateTime = await selectTime(context);
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
    TextEditingController firstController,
    TextEditingController secondController,
    String firstLabel,
    String secondLabel,
    BuildContext context) {
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
      const Text("Or"),
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
                  var dateTime = await selectDate(context);
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
Future<String?> selectDate(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1900),
    lastDate: DateTime(2100),
  );
  if (picked != null) {
    /*  return "${picked.year}-${picked.month}-${picked.day}"; */
    return DateFormat('d MMM yyyy').format(picked);
  } else {
    return null;
  }
}

Future<String?> selectTime(BuildContext context) async {
  final TimeOfDay? picked = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
  );
  if (picked != null) {
    return "${picked.hour}:${picked.minute} ${picked.period.name.toUpperCase()}";
  } else {
    return null;
  }
}
