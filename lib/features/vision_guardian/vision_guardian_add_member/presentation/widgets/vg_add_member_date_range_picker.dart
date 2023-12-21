import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class VgAddMemberDateRangePicker extends HookConsumerWidget {
  const VgAddMemberDateRangePicker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController controller = TextEditingController(text: "11 Dec 23 - 17 Dec 23");
    return TextField(
      readOnly: true,
      controller: controller,
      decoration: InputDecoration(
        
        hintText: "",
        hintStyle: applyRobotoFont(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        suffixIcon: IconButton(
          onPressed: () async {
            var pickedDateRange = await _showDateRangePicker(context);

            var result =
                "${DateFormat('dd MMM').format(pickedDateRange!.start)} - ${DateFormat('dd MMM yyyy').format(pickedDateRange.end)}";
            controller.text = result;
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
