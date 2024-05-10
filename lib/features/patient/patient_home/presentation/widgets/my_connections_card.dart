import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
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
    return Container(
      width: 80,
      // color: index.isEven ? Colors.red : Colors.blue,
      padding: const EdgeInsets.only(left: AppSize.km),
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
                    radius: 24,
                  )
                : AppNameAvatar(
                    name: name,
                    radius: 24,
                  ),
          ),
          const SizedBox(height: AppSize.ks),
          AutoSizeText(
            name.capitalize(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
