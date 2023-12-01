import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class VtDateRangePicker extends StatelessWidget {
  const VtDateRangePicker({super.key});
  static TextEditingController controller = TextEditingController(text: "12 Nov - 30 Nov 2023");

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "",
        hintStyle: applyRobotoFont(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        suffixIcon: IconButton(
          onPressed: () async {
            var pickedDateRange = await _showDateRangePicker(context);
            var result = DateFormat('dd MMM').format(pickedDateRange!.start) +
                " - " +
                DateFormat('dd MMM yyyy').format(pickedDateRange.end);
            print(result);
            controller.text = result;
            print("object");
          },
          icon: const Icon(CupertinoIcons.calendar),
        ),
      ),
    );
  }

  Future<DateTimeRange?> _showDateRangePicker(BuildContext context) async {
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      initialEntryMode: DatePickerEntryMode.input,
      firstDate: DateTime.now().subtract(const Duration(days: 365 * 2)),
      lastDate: DateTime.now().add(const Duration(days: 365 * 2)),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            iconTheme: const IconThemeData(color: AppColor.white),
            primaryColor: AppColor.primary,
            buttonTheme:
                const ButtonThemeData(textTheme: ButtonTextTheme.primary),
            colorScheme: const ColorScheme.light(
              primary: AppColor.primary,
            ).copyWith(
              secondary: AppColor.lightBlue,
            ),
          ),
          child: child!,
        );
      },
    );
    return picked;
  }
}
