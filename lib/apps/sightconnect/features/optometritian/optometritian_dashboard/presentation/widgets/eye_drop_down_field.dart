import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EyeNumber {
  String name = '0.00';
  double value = 0.0;

  EyeNumber({required this.name, required this.value});
}

class EyeNumberDropdown extends StatefulWidget {
  final ValueChanged<EyeNumber?> onChanged;

  const EyeNumberDropdown({Key? key, required this.onChanged})
      : super(key: key);

  @override
  EyeNumberDropdownState createState() => EyeNumberDropdownState();
}

class EyeNumberDropdownState extends State<EyeNumberDropdown> {
  final List<EyeNumber> _eyeNumbers = [
    EyeNumber(name: '0.00', value: 0.0),
    EyeNumber(name: '0.25', value: 0.25),
    EyeNumber(name: '0.50', value: 0.5),
    EyeNumber(name: '0.75', value: 0.75),
    EyeNumber(name: '1.00', value: 1.0),
    EyeNumber(name: '1.25', value: 1.25),
    EyeNumber(name: '1.50', value: 1.5),
    EyeNumber(name: '1.75', value: 1.75),
    EyeNumber(name: '2.00', value: 2.0),
    EyeNumber(name: '2.25', value: 2.25),
    EyeNumber(name: '2.50', value: 2.5),
    EyeNumber(name: '2.75', value: 2.75),
    EyeNumber(name: '3.00', value: 3.0),
    EyeNumber(name: '3.25', value: 3.25),
    EyeNumber(name: '3.50', value: 3.5),
    EyeNumber(name: '3.75', value: 3.75),
    EyeNumber(name: '4.00', value: 4.0),
    EyeNumber(name: '4.25', value: 4.25),
    EyeNumber(name: '4.50', value: 4.5),
    EyeNumber(name: '4.75', value: 4.75),
    EyeNumber(name: '5.00', value: 5.0),
  ];
  EyeNumber? _selectedEyeNumber;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.height(context) * 0.075,
      width: AppSize.width(context) * 0.23,
      child: DropdownButton<EyeNumber>(
        hint: Text(
          '0.00',
          style: applyRobotoFont(
              color: AppColor.grey.withOpacity(0.5), fontSize: 14),
        ),
        isExpanded: true,
        value: _selectedEyeNumber,
        onChanged: (value) {
          widget.onChanged(value);
          setState(() {
            _selectedEyeNumber = value;
          });
        },
        elevation: 0,
        menuMaxHeight: 400,
        underline: Container(
          height: 1.5,
          color: AppColor.grey.withOpacity(0.5),
        ),
        icon: Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Icon(
            CupertinoIcons.chevron_down,
            color: AppColor.grey.withOpacity(0.5),
            size: 16,
          ),
        ),
        items: _eyeNumbers
            .map((eyeNumber) => DropdownMenuItem<EyeNumber>(
                  value: eyeNumber,
                  child: Text(
                    eyeNumber.name,
                    style: applyRobotoFont(
                      color: AppColor.black,
                      fontSize: 14,
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
