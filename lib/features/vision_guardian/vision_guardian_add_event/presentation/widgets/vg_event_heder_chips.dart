import 'package:flutter/material.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';
import '../../../../../shared/theme/text_theme.dart';

Widget vgEventHeaderChips(ValueNotifier<int> isSelected, BuildContext context,
    List<String> eventStatus) {
  return SizedBox(
    height: AppSize.height(context) * 0.04,
    width: AppSize.width(context) * 0.9,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: eventStatus.length,
      itemBuilder: (BuildContext context, int index) {
        var data = eventStatus[index];

        return InkWell(
          onTap: () {
            if (isSelected.value == index) {
              isSelected.value = -1;
            } else {
              isSelected.value = index;
            }
          },
          child: Container(
            margin: const EdgeInsets.only(right: AppSize.kspadding),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color:
                    isSelected.value == index ? AppColor.blue : AppColor.grey,
              ),
              color: isSelected.value == index
                  ? const Color(0xFFC9DAFD)
                  : AppColor.white,
              borderRadius: BorderRadius.circular(
                AppSize.ksradius,
              ),
            ),
            child: Center(
              child: Text(
                data,
                style: applyRobotoFont(
                    fontSize: 14,
                    color: AppColor.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        );
      },
    ),
  );
}
