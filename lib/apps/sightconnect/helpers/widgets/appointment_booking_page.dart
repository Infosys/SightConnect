import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AppointmentBooking extends StatelessWidget {
  const AppointmentBooking({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Scaffold(
      appBar: CustomAppbar(title: Text(loc.appointmentBookingTitle)),
      body: Center(
        child: Text(loc.comingSoon),
      ),
    );
  }
}
