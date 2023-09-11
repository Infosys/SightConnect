import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MyConnectionsCard extends HookWidget {
  const MyConnectionsCard({
    Key? key,
    required this.data,
  }) : super(key: key);
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    var isSelected = useState<bool>(false);
    return InkWell(
      onTap: () {
        isSelected.value = !isSelected.value;
      },
      child: Container(
        width: AppSize.width(context) * 0.189,
        margin: EdgeInsets.only(right: AppSize.width(context) * 0.01),
        padding: const EdgeInsets.all(2),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected.value ? Colors.blue : Colors.transparent,
                  width: 3.0,
                ),
              ),
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage(
                  data["image"],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(data["name"]),
          ],
        ),
      ),
    );
  }
}
