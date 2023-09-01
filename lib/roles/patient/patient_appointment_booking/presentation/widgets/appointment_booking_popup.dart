import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class AppointmentBookingPopUp extends StatelessWidget {
  const AppointmentBookingPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        children: [
          SvgPicture.asset(
            AppIcon.patientAppointmentBookingCalander,
            height: AppSize.height(context) * 0.05,
          ),
          SizedBox(
            height: AppSize.height(context) * 0.02,
          ),
          const Text('Confirm Booking'),
        ],
      ),
      content: Text(
        'Voluptate duis incididunt ad Lorem cillum ut exercitation occaecat fugiat officia esse.',
        style: applyRobotoFont(fontSize: 14),
      ),
      actions: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.bodyMedium,
          ),
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.bodyMedium),
          child: const Text(
            'Confirm',
          ),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pop();

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                width: MediaQuery.of(context).size.width,
                elevation: 1,
                behavior: SnackBarBehavior.floating,
                duration: const Duration(milliseconds: 2500),
                backgroundColor: Colors.black.withOpacity(0.5),
                content: SizedBox(
                  child: Text(
                    "Done! Appointment with  is scheduled for Sreeram Murthy on ${DateFormat("MMMM d, yyyy").format(DateTime.now())} ",
                    style: applyRobotoFont(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
