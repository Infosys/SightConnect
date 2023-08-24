import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/local/fake_data_source.dart';

class PatientFamilyDetails extends StatelessWidget {
  const PatientFamilyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Family Details",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          8.verticalSpace,
          ...hospital
              .map(
                (hospital) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Text(
                      hospital["name"]![0],
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  title: Text(
                    hospital["name"] ?? "",
                  ),
                  subtitle: Text(
                    hospital["address"] ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.chevron_right),
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}

// Widget PatientFamilyDetails(BuildContext context) {
//   return ListTile(
//     title: Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Text(
//           "Family Details",
//           style: Theme.of(context).textTheme.titleMedium,
//         ),
//         8.verticalSpace,
//         ...hospital
//             .map(
//               (hospital) => ListTile(
//                 leading: CircleAvatar(
//                   backgroundColor: Colors.black,
//                   child: Text(
//                     hospital["name"]![0],
//                     style: const TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 title: Text(
//                   hospital["name"] ?? "",
//                 ),
//                 subtitle: Text(
//                   hospital["address"] ?? "",
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                   style: Theme.of(context).textTheme.bodySmall,
//                 ),
//                 trailing: IconButton(
//                   onPressed: () {},
//                   icon: const Icon(Icons.chevron_right),
//                 ),
//               ),
//             )
//             .toList(),
//       ],
//     ),
//   );
// }
