import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';

class AdminDoctorDetailsCard extends StatelessWidget {
  const AdminDoctorDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
     
      color: AppColor.blue.withOpacity(0.5),
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
                 VerticalDivider(
                  color: AppColor.black,
                  thickness: 2,
                ),
                Expanded(
                
                  child: Wrap(
                    children: [
                       ListTile(
        title: Text('Request ID'),
        subtitle: Text('REQ-RIEB2024-0035'),
      ),
      ListTile(
        title: Text('Transplantation Technique'),
        subtitle: Text('PKP, EK, ALK'),
      ),
                    ],
                  ),
                ),
                 Expanded(
                 
                  child: Wrap(
                    children: [  ListTile(
        title: Text('Date - Time of Request'),
        subtitle: Text('03/01/2024, 07:00 AM'),
      ),
      ListTile(
        title: Text('Tissue'),
        subtitle: Text('  Cornea'),
      ),],
                  ),
                  
                ),
                Expanded(
                 
                  child: Wrap(
                    children: [
                        ListTile(
        title: Text('Surgery Date - Time'),
        subtitle: Text('03/01/2024, 02:30 PM'),
      ),
      ListTile(
        title: Text('Eyes'),
        subtitle: Text('Right Eye'),
      ),
                    ],
                  ),),
                   Expanded(
                 
                  child: Wrap(
                    children: [
                        ListTile(
        title: Text('Surgery Location'),
        subtitle: Text('LVP Eye Institute - KAR'),
      ),
   
                    ],
                  ),)
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
       ListTile(
        title: Text('Date - Time of Request'),
        subtitle: Text('03/01/2024, 07:00 AM'),
      ),
      ListTile(
        title: Text('Tissue'),
        subtitle: Text('  Cornea'),
      ),
      ListTile(
        title: Text('Surgery Date - Time'),
        subtitle: Text('03/01/2024, 02:30 PM'),
      ),
      ListTile(
        title: Text('Eyes'),
        subtitle: Text('Right Eye'),
      ),
            ListTile(
        title: Text('Surgery Location'),
        subtitle: Text('LVP Eye Institute - KAR'),
      ),
    
    ];
  }
}
