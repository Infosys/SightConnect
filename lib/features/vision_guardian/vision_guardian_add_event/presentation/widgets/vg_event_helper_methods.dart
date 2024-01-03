// import 'package:flutter/material.dart';

// Widget addMemberCard(bool isOpen, BuildContext context) {
//   return Visibility(
//     visible: !isEdit1.value,
//     child: Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 12.0),
//           child: TextField(
//             controller: nameController1,
//             onChanged: (value) {
//               nameController1.text = value;
//             },
//             decoration: InputDecoration(
//               hintText: "Name",
//               hintStyle: applyRobotoFont(
//                 fontSize: 14,
//                 fontWeight: FontWeight.w500,
//                 color: AppColor.grey,
//               ),
//             ),
//           ),
//         ),
//         const SizedBox(
//           height: AppSize.klheight,
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 12.0),
//           child: TextField(
//             onChanged: (value) {
//               mobileController1.text = value;
//             },
//             controller: mobileController1,
//             decoration: InputDecoration(
//               hintText: "Phone Number",
//               hintStyle: applyRobotoFont(
//                 fontSize: 14,
//                 fontWeight: FontWeight.w500,
//                 color: AppColor.grey,
//               ),
//             ),
//           ),
//         ),
//         const SizedBox(
//           height: AppSize.klheight,
//         ),
//       ],
//     ),
//   );
// }

// Widget addMemberButton(BuildContext context, Function onPressed) {
//   return InkWell(
//     onTap: () {},
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const Icon(
//           Icons.add_circle_outline,
//           color: AppColor.primary,
//           size: 30,
//         ),
//         const SizedBox(
//           width: 10,
//         ),
//         Text(
//           "Add Teammate",
//           style: applyRobotoFont(
//             fontSize: 14,
//             fontWeight: FontWeight.w500,
//             color: AppColor.primary,
//           ),
//         ),
//       ],
//     ),
//   );
// }
