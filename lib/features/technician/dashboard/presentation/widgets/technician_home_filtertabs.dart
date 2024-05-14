import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/technician/dashboard/data/fake_data_source.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TechnicianHomeFilterTabs extends HookConsumerWidget {
  const TechnicianHomeFilterTabs({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isSelected = useState<int>(-1);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 30,
          width: AppSize.width(context) * 0.45,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: TechnicianFakeDataSource.filterType.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                onTap: () {
                  isSelected.value = index;
                },
                child: Container(
                  height: 30,
                  margin: const EdgeInsets.only(right: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                  decoration: BoxDecoration(
                    color: isSelected.value == index
                        ? AppColor.lightBlue
                        : AppColor.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: isSelected.value == index
                          ? AppColor.primary
                          : AppColor.grey,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      TechnicianFakeDataSource.filterType[index],
                      textAlign: TextAlign.center,
                      style: applyRobotoFont(
                        color: AppColor.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const Spacer(),
        SizedBox(
          height: AppSize.height(context) * 0.05,
          child: const VerticalDivider(
            color: AppColor.grey,
            width: 4,
            thickness: 0.7,
          ),
        ),
        const SizedBox(
          width: AppSize.km,
        ),
        SizedBox(
            width: AppSize.width(context) * 0.17,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: applyRobotoFont(color: AppColor.grey, fontSize: 14),
                contentPadding: const EdgeInsets.all(10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: AppColor.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: AppColor.grey),
                ),
                suffixIcon: const Icon(
                  Icons.search,
                  color: AppColor.grey,
                ),
              ),
            )),
        const Center(
          child: Icon(
            Icons.filter_list,
            color: AppColor.grey,
            size: 25,
          ),
        )
      ],
    );
  }
}
