// import 'package:eye_care_for_all/core/constants/app_color.dart';
// import 'package:eye_care_for_all/shared/responsive/responsive.dart';
// import 'package:eye_care_for_all/shared/theme/text_theme.dart';
// import 'package:flutter/material.dart';

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppBar({
//     super.key,
//     this.title = "Eye Care For All",
//     this.actions,
//     this.showBackButton = true,
//     this.onBackButtonPressed,
//     this.backgroundColor,
//     this.titleColor = AppColor.kBlack,
//   });

//   final String title;
//   final List<Widget>? actions;
//   final bool showBackButton;
//   final VoidCallback? onBackButtonPressed;
//   final Color? backgroundColor;
//   final Color? titleColor;

//   @override
//   Widget build(BuildContext context) {
//     return PreferredSize(
//       preferredSize: Responsive.isMobile(context)
//           ? const Size.fromHeight(56.0)
//           : const Size.fromHeight(64.0),
//       child: AppBar(
//         elevation: 0,
//         backgroundColor: backgroundColor,
//         leading: showBackButton
//             ? IconButton(
//                 icon: const Icon(
//                   Icons.chevron_left,
//                   size: 34,
//                 ),
//                 onPressed:
//                     onBackButtonPressed ?? () => Navigator.of(context).pop(),
//               )
//             : null,
//         title: Text(
//           title,
//           style: applyFiraSansFont(
//             fontSize: 16,
//             color: titleColor ?? AppColor.kBlack,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         actions: actions,
//       ),
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(56.0);
// }
