import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppointmentBookingRemoteTeleConsultationSwitch extends HookWidget {
  final String? label;
  const AppointmentBookingRemoteTeleConsultationSwitch({this.label, super.key});

  @override
  Widget build(BuildContext context) {
    var initalValue = useState<bool>(false);

    return Row(
      children: [
        Text(
          label ?? "",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Spacer(),
        CupertinoSwitch(
          onChanged: (bool value) {
            initalValue.value = value;
          },
          value: initalValue.value,
        )
      ],
    );
  }
}
