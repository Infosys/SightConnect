import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VtMarkMyAvailableDateRangePicker extends ConsumerWidget {
  const VtMarkMyAvailableDateRangePicker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController controller =
        TextEditingController(text: DateTime.now().toString().substring(0, 10));
    return Container(
      width: AppSize.kl * 10,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.ks,
      ),
      child: TextField(
        readOnly: true,
        enabled: false,
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
              // var pickedDateRange = await _showDateRangePicker(context);

              // var result =
              //     "${DateFormat('dd MMM').format(pickedDateRange!.start)} - ${DateFormat('dd MMM yyyy').format(pickedDateRange.end)}";
              // controller.text = result;
            },
            icon: const Icon(
              CupertinoIcons.calendar,
              color: AppColor.lightGrey,
            ),
          ),
        ),
      ),
    );
  }

  // Future<DateTimeRange?> _showDateRangePicker(BuildContext context) async {
  //   final DateTimeRange? picked = await showDateRangePicker(
  //     context: context,
  //     initialEntryMode: DatePickerEntryMode.input,
  //     firstDate: DateTime.now().subtract(const Duration(days: 365 * 2)),
  //     lastDate: DateTime.now().add(const Duration(days: 365 * 2)),
  //     builder: (context, child) {
  //       return Theme(
  //         data: ThemeData.light().copyWith(
  //           iconTheme: const IconThemeData(color: AppColor.white),
  //           primaryColor: AppColor.primary,
  //           buttonTheme:
  //               const ButtonThemeData(textTheme: ButtonTextTheme.primary),
  //           colorScheme: const ColorScheme.light(
  //             primary: AppColor.primary,
  //           ).copyWith(
  //             secondary: AppColor.lightBlue,
  //           ),
  //         ),
  //         child: child!,
  //       );
  //     },
  //   );
  //   return picked;
  // }
}
