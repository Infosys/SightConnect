import 'package:flutter/material.dart';

class PatientInfoCard extends StatelessWidget {
  const PatientInfoCard({super.key, this.keyText, this.valueText});
  final String? keyText;
  final String? valueText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            keyText ?? "",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(
            valueText ?? "",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
// }
// Widget PatientInfoCard(BuildContext context, String key, String value) {
//   return Padding(
//     padding: const EdgeInsets.all(4.0),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           key,
//           style: Theme.of(context).textTheme.bodySmall,
//         ),
//         Text(
//           value,
//           style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//               ),
//         ),
//       ],
//     ),
//   );
// }