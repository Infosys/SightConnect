import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';

class AdminDoctorDetailsCard extends StatelessWidget {
  const AdminDoctorDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      color: AppColor.blue.withOpacity(0.5),
      child: Responsive.isMobile(context)
          ? Column(
              children: [
                _doctorInfo(),
                Column(
                  children: _requestInfo(),
                )
              ],
            )
          : Row(
              children: [
                Expanded(child: _doctorInfo()),
                Expanded(
                  flex: 3,
                  child: Wrap(
                    children: _requestInfo(),
                  ),
                )
              ],
            ),
    );
  }

  Widget _doctorInfo() {
    return const ListTile(
      title: Text('Dr. John Doe'),
      subtitle: Text('Ophthalmologist'),
      leading: CircleAvatar(
        radius: 30,
        child: Icon(Icons.person),
      ),
    );
  }

  List<Widget> _requestInfo() {
    return [
      const ListTile(
        title: Text('Request ID'),
        subtitle: Text('REQ-RIEB2024-0035'),
      ),
      const ListTile(
        title: Text('Expiry Date'),
        subtitle: Text('12/12/2024'),
      ),
    ];
  }
}
