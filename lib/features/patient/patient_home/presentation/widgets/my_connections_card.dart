import 'package:cached_network_image/cached_network_image.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MyConnectionsCard extends HookWidget {
  const MyConnectionsCard({
    Key? key,
    required this.image,
    required this.name,
    required this.index,
  }) : super(key: key);

  final String? image;
  final String name;
  final int index;

  @override
  Widget build(BuildContext context) {
    var isSelected = useState<bool>(false);
    isSelected.value = index == 0 ? true : false;
    return Padding(
      padding: const EdgeInsets.only(left: AppSize.kmpadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            customBorder: const CircleBorder(),
            onTap: () {
              isSelected.value = !isSelected.value;
            },
            child: image != null
                ? AppNetworkImage(
                    imageUrl: image!,
                    radius: 30,
                  )
                : const CircleAvatar(
                    backgroundColor: AppColor.lightGrey,
                  ),
          ),
          const SizedBox(height: AppSize.ksheight),
          Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
