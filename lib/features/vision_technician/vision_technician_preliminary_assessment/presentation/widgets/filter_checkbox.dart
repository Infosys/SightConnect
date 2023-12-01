import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/input.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class FilterCheckBox extends StatelessWidget {
  final dynamic items;
  final String? name;
  final int includeInputBox;
   FilterCheckBox({super.key, this.items, this.name,required this.includeInputBox});
  var otherController=TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name!,
          style: applyFiraSansFont(
            fontSize: 18,
            color: AppColor.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        Wrap(
          children: [
            for (int index = 0; index < items.value.length; index++) ...[
              SizedBox(
                width: AppSize.width(context) * 0.4,
                child: CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                    items.value[index]["type"],
                    style: applyRobotoFont(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColor.grey),
                  ),
                  value: items.value[index]["checked"],
                  onChanged: (bool? value) {
                    var newMap = [...items.value];
                    newMap[index]["checked"] = !newMap[index]["checked"];
                    items.value = newMap;
                  },
                ),
              )
            ],
            if(includeInputBox==1)
              Padding(
                padding: const EdgeInsets.only(left: AppSize.klpadding),
                child: SizedBox(
                    width: AppSize.width(context) * 0.2,
                    child:  Input(
                      title: 'Others',
                      keyboardType: TextInputType.name,
                      controller: otherController,
                    )),
              ),
          ],
        ),
      ],
    );
  }
}
