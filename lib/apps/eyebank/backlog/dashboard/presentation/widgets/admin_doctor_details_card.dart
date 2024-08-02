import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';

class AdminDoctorDetailsCard extends StatelessWidget {
  const AdminDoctorDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      color: AppColor.lightBlueOpacity,
      child: Responsive.isMobile(context)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _doctorInfo(),
                Column(
                  children: _requestInfo(),
                )
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: _doctorInfo()),
                const VerticalDivider(
                  color: AppColor.black,
                  thickness: 2,
                ),
                const Expanded(
                  child: Wrap(
                    children: [
                      ListTile(
                        title: Text(
                          'Request ID',
                          maxLines: 1,
                        ),
                        subtitle: Text(
                          'REQ-RIEB2024-0035',
                          maxLines: 1,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Transplantation Technique',
                          maxLines: 1,
                        ),
                        subtitle: Text(
                          'PKP, EK, ALK',
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: Wrap(
                    children: [
                      ListTile(
                        title: Text(
                          'Date - Time of Request',
                          maxLines: 1,
                        ),
                        subtitle: Text(
                          '03/01/2024, 07:00 AM',
                          maxLines: 1,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Tissue',
                          maxLines: 1,
                        ),
                        subtitle: Text(
                          '  Cornea',
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: Wrap(
                    children: [
                      ListTile(
                        title: Text(
                          'Surgery Date - Time',
                          maxLines: 1,
                        ),
                        subtitle: Text(
                          '03/01/2024, 02:30 PM',
                          maxLines: 1,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Eyes',
                          maxLines: 1,
                        ),
                        subtitle: Text(
                          'Right Eye',
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: Wrap(
                    children: [
                      ListTile(
                        title: Text(
                          'Surgery Location',
                          maxLines: 1,
                        ),
                        subtitle: Text(
                          'LVP Eye Institute - KAR',
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
    );
  }

  Widget _doctorInfo() {
    return const ListTile(
      title: Text(
        'Dr. John Doe',
        maxLines: 1,
      ),
      subtitle: Text(
        'Ophthalmologist',
        maxLines: 1,
      ),
      leading: CircleAvatar(
        radius: 30,
        child: Icon(Icons.person),
      ),
    );
  }

  List<Widget> _requestInfo() {
    return [
      const ListTile(
        title: Text(
          'Request ID',
          maxLines: 1,
        ),
        subtitle: Text(
          'REQ-RIEB2024-0035',
          maxLines: 1,
        ),
      ),
      const ListTile(
        title: Text(
          'Expiry Date',
          maxLines: 1,
        ),
        subtitle: Text(
          '12/12/2024',
          maxLines: 1,
        ),
      ),
      const ListTile(
        title: Text(
          'Date - Time of Request',
          maxLines: 1,
        ),
        subtitle: Text(
          '03/01/2024, 07:00 AM',
          maxLines: 1,
        ),
      ),
      const ListTile(
        title: Text(
          'Tissue',
          maxLines: 1,
        ),
        subtitle: Text(
          '  Cornea',
          maxLines: 1,
        ),
      ),
      const ListTile(
        title: Text(
          'Surgery Date - Time',
          maxLines: 1,
        ),
        subtitle: Text(
          '03/01/2024, 02:30 PM',
          maxLines: 1,
        ),
      ),
      const ListTile(
        title: Text(
          'Eyes',
          maxLines: 1,
        ),
        subtitle: Text(
          'Right Eye',
          maxLines: 1,
        ),
      ),
      const ListTile(
        title: Text(
          'Surgery Location',
          maxLines: 1,
        ),
        subtitle: Text(
          'LVP Eye Institute - KAR',
          maxLines: 1,
        ),
      ),
    ];
  }
}
