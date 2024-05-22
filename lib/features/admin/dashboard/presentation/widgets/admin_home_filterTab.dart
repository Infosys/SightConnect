import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/admin/data/admin_fake_data_source.dart';
import 'package:eye_care_for_all/features/technician/dashboard/data/fake_data_source.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AdminAppSearchFilterTabs extends HookConsumerWidget {
  const AdminAppSearchFilterTabs({
    this.searchController,
    this.onSearch,
    super.key,
  });
  final TextEditingController? searchController;
  final void Function(String)? onSearch;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isSelected = useState<int>(-1);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: SizedBox(
            height: 40,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: AdminFakeDataSource.filterTypes.length,
              itemBuilder: (context, index) => InkWell(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                onTap: () => isSelected.value = index,
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.all(8),
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
                      AdminFakeDataSource.filterTypes[index],
                      textAlign: TextAlign.center,
                      style:
                          applyRobotoFont(color: AppColor.black, fontSize: 14),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        if (!Responsive.isMobile(context))
          _SearchAndFilter(
            onSearch: onSearch,
            searchController: searchController,
          )
      ],
    );
  }
}

class _SearchAndFilter extends StatelessWidget {
  const _SearchAndFilter({
    super.key,
    this.searchController,
    this.onSearch,
  });
  final TextEditingController? searchController;
  final void Function(String)? onSearch;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          const SizedBox(width: AppSize.km),
          const SizedBox(
            height: 28,
            child: VerticalDivider(
              color: AppColor.grey,
              width: 4,
              thickness: 0.7,
            ),
          ),
          const SizedBox(width: AppSize.km),
          SizedBox(
            width: AppSize.width(context) * 0.2,
            child: TextFormField(
              controller: searchController,
              onChanged: onSearch,
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: applyRobotoFont(color: AppColor.grey, fontSize: 14),
                contentPadding: const EdgeInsets.all(10),
                suffixIcon: const Icon(Icons.search, color: AppColor.grey),
              ),
            ),
          ),
          const SizedBox(width: AppSize.km),
          const Icon(Icons.filter_list, color: AppColor.grey, size: 25),
        ],
      ),
    );
  }
}
