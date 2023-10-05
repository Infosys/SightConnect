import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MyConnectionsCard extends HookWidget {
  const MyConnectionsCard({
    Key? key,
    required this.doctor,
    required this.index,
  }) : super(key: key);
  final Map<String, dynamic> doctor;
  final int index;

  @override
  Widget build(BuildContext context) {
    var isSelected = useState<bool>(false);
    isSelected.value = index == 0 ? true : false;
    return Padding(
      padding: const EdgeInsets.only(right: AppSize.kmpadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              isSelected.value = !isSelected.value;
            },
            child: Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected.value ? Colors.blue : Colors.transparent,
                  width: 3.0,
                ),
                image: DecorationImage(
                  opacity: isSelected.value ? 1 : 0.9,
                  image: AssetImage(
                    doctor["image"],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSize.ksheight),
          Text(
            doctor["name"],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
