import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_appointment_booking/data/local/fake_data_source.dart';
import 'package:eye_care_for_all/roles/patient/patient_appointment_booking/presentation/pages/patient_appointment_booking_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppointmentBookingCalendar extends StatelessWidget {
  const AppointmentBookingCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSize.kspadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: AppSize.kmheight,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _generateDates(),
                ),
              ),
              const SizedBox(
                height: AppSize.kmheight,
              ),
              Row(
                children: [
                  Text(
                    DateFormat("MMMM d, yyyy").format(
                      DateTime.now(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColor.kWhite,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(AppSize.klradius),
              topRight: Radius.circular(AppSize.klradius),
            ),
            boxShadow: [
              BoxShadow(
                color: AppColor.kPrimary.withOpacity(0.4),
                blurRadius: 60.0,
              ),
            ],
          ),
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(
                AppSize.kspadding,
              ),
              child: Column(
                children: fullDateAppointment
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.all(
                          AppSize.kspadding,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Text(
                                    e.time!,
                                  ),
                                  Text(
                                    e.timeZone!,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColor.kGrey.withOpacity(
                                    0.1,
                                  ),
                                ),
                                child: e.isScheduled!
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(
                                                AppSize.kspadding),
                                            child: Text(
                                              e.isBreak! ? "Break" : "Booked",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                          Text(
                                            "${e.startTime} - ${e.endTime}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColor.kGrey),
                                          )
                                        ],
                                      )
                                    : Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(
                                              AppSize.kspadding,
                                            ),
                                            child: Text(
                                              "No Appointments",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const PatientAppointmentBookingPage(),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              "Schedule",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelLarge!
                                                  .copyWith(
                                                      color: AppColor.kPrimary),
                                            ),
                                          ),
                                          Text(
                                            "${e.startTime} - ${e.endTime}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColor.kGrey,
                                                ),
                                          )
                                        ],
                                      ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        )
      ],
    );
  }

  _generateDates() {
    final currentDate = DateTime.now();
    final dayFormatter = DateFormat('d');
    final monthFormatter = DateFormat('EEE');
    final dates = <Widget>[];

    for (int i = 0; i < 10; i++) {
      final date = currentDate.add(Duration(days: i));
      dates.add(GestureDetector(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: SizedBox(
            height: AppSize.height * 0.1,
            width: AppSize.width * 0.15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  monthFormatter.format(date),
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: dayFormatter.format(date) ==
                          dayFormatter.format(DateTime.now())
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        )
                      : null,
                  child: Text(
                    dayFormatter.format(date),
                    style: const TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),
          ),
        ),
      ));
    }

    return dates;
  }
}
