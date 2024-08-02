import 'package:eye_care_for_all/apps/eyebank/common/dashboard/presentation/provider/eb_dashboard_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/common/dashboard/presentation/widgets/eye_bank_dashboard_appbar.dart';
import 'package:eye_care_for_all/apps/eyebank/common/dashboard/presentation/widgets/eye_bank_dashboard_side_menu.dart';

import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/widgets/desktop_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EyeBankDashboardPage extends HookConsumerWidget {
  const EyeBankDashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedMenuItem = useState(0);

    final isMobile = Responsive.isMobile(context);
    return Scaffold(
      appBar: const EyeBankDashboardAppbar(
        onNotificationTap: null,
        onSettingsTap: null,
      ),
      drawer: isMobile
          ? Drawer(
              child: EyeBankDashboardSideMenu(
                  items: ref.watch(ebDashboardProvider).menuItem,
                  onSelected: (id) {
                    selectedMenuItem.value = id!;
                  }),
            )
          : null,
      body: DesktopClipper(
        widget: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: !isMobile,
              child: EyeBankDashboardSideMenu(
                  items: ref.watch(ebDashboardProvider).menuItem,
                  onSelected: (id) {
                    selectedMenuItem.value = id!;
                  }),
            ),
            if (!isMobile) const SizedBox(width: 8),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ref
                    .watch(ebDashboardProvider)
                    .pages[selectedMenuItem.value],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


























// import 'package:eye_care_for_all/apps/eyebank/features/admin/dashboard/presentation/pages/admin_dashboard_pages.dart';
// import 'package:eye_care_for_all/apps/eyebank/features/consultant/dashboard/presentation/counselor_dashboard_page.dart';
// import 'package:eye_care_for_all/apps/eyebank/features/doctor/dashboard/presentation/pages/doctor_dashboard_page.dart';
// import 'package:eye_care_for_all/apps/eyebank/features/technician/dashboard/presentation/pages/technician_dashboard_page.dart';
// import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/initialization_page.dart';
// import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/login_page.dart';
// import 'package:eye_care_for_all/apps/sightconnect/common/initialization/providers/initilization_provider.dart';
// import 'package:eye_care_for_all/shared/constants/app_color.dart';
// import 'package:eye_care_for_all/shared/constants/app_images.dart';
// import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
// import 'package:eye_care_for_all/shared/responsive/responsive.dart';
// import 'package:eye_care_for_all/shared/theme/text_theme.dart';
// import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class EyeBankDashboardPage extends StatefulWidget {
//   const EyeBankDashboardPage({super.key});

//   @override
//   State<EyeBankDashboardPage> createState() => _EyeBankDashboardPageState();
// }

// class _EyeBankDashboardPageState extends State<EyeBankDashboardPage> {
//   EyeBankRole role = EyeBankRole.eyeBankManager;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // drawer: const EyeBankDrawer(),
//       appBar: AppBar(
//         backgroundColor: AppColor.white,
//         elevation: 2,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Image.asset(
//               AppImages.logo,
//               height: Responsive.isMobile(context) ? 20 : 30,
//             ),
//             const Spacer(),
//           ],
//         ),
//         actions: [
//           PopupMenuButton<EyeBankRole>(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   const Icon(
//                     Icons.person,
//                     color: AppColor.grey,
//                   ),
//                   const SizedBox(width: 5),
//                   Text(
//                     role.displayValue,
//                     style: const TextStyle(color: AppColor.grey),
//                   ),
//                 ],
//               ),
//             ),
//             onSelected: (value) {
//               setState(() {
//                 role = value;
//               });
//             },
//             itemBuilder: (BuildContext context) =>
//                 <PopupMenuEntry<EyeBankRole>>[
//               PopupMenuItem(
//                 value: EyeBankRole.transplantSurgeon,
//                 child: Text(EyeBankRole.transplantSurgeon.displayValue),
//               ),
//               PopupMenuItem(
//                 value: EyeBankRole.eyeBankManager,
//                 child: Text(EyeBankRole.eyeBankManager.displayValue),
//               ),
//               PopupMenuItem(
//                 value: EyeBankRole.labTechnician,
//                 child: Text(EyeBankRole.labTechnician.displayValue),
//               ),
//               PopupMenuItem(
//                 value: EyeBankRole.recoveryTechnician,
//                 child: Text(EyeBankRole.recoveryTechnician.displayValue),
//               ),
//             ],
//           ),
//         ],
//       ),

//       // create a switch case based on role

//       body: AnimatedSwitcher(
//         switchInCurve: Curves.easeIn,
//         switchOutCurve: Curves.easeOut,
//         duration: const Duration(milliseconds: 600),
//         child: () {
//           switch (role) {
//             case EyeBankRole.transplantSurgeon:
//               return const DoctorDashBoardPage();
//             case EyeBankRole.eyeBankManager:
//               return const AdminDashboardPages();
//             case EyeBankRole.labTechnician:
//               return const TechnicianDashboardPage();
//             case EyeBankRole.recoveryTechnician:
//               return const CounselorDashboardPage();
//             default:
//               return Container();
//           }
//         }(),
//       ),
//     );
//   }
// }

// enum EyeBankRole {
//   transplantSurgeon(
//     value: "TRANSPLANT_SURGEON",
//     displayValue: "Transplant Surgeon",
//   ),
//   eyeBankManager(
//     value: "EYE_BANK_MANAGER",
//     displayValue: "Eye Bank Manager",
//   ),
//   recoveryTechnician(
//     value: "RECOVERY_TECHNICIAN",
//     displayValue: "Recovery Technician",
//   ),
//   labTechnician(
//     value: "LAB_TECHNICIAN",
//     displayValue: "Lab Technician",
//   );

//   final String value;
//   final String displayValue;

//   const EyeBankRole({
//     required this.value,
//     required this.displayValue,
//   });
// }

// class EyeBankDrawer extends HookWidget {
//   const EyeBankDrawer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final isLoading = useState(false);
//     final loc = context.loc!;
//     return Drawer(
//       child: LoadingOverlay(
//         isLoading: isLoading.value,
//         child: Column(
//           children: [
//             SizedBox(
//               // Add SizedBox
//               height: 100,
//               child: DrawerHeader(
//                 decoration: const BoxDecoration(),
//                 child: Center(
//                   child: Image.asset(
//                     AppImages.logo,
//                     height: 50,
//                   ),
//                 ),
//               ),
//             ),
//             Consumer(
//               builder: (context, ref, _) => ListTile(
//                 onTap: () async {
//                   final navigator = Navigator.of(context);
//                   await ref.read(initializationProvider).resetProfile();
//                   navigator.pushNamedAndRemoveUntil(
//                       InitializationPage.routeName, (route) => false);
//                 },
//                 leading: Container(
//                   padding: const EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: AppColor.primary.withOpacity(0.4),
//                   ),
//                   child: SvgPicture.asset(
//                     "assets/drawer_icons/switch.svg",
//                   ),
//                 ),
//                 title: Text(
//                   loc.switchRole,
//                   style: applyRobotoFont(
//                     fontWeight: FontWeight.normal,
//                     color: AppColor.grey,
//                     fontSize: 14,
//                   ),
//                 ),
//               ),
//             ),
//             const Divider(),
//             Consumer(
//               builder: (context, ref, _) => ListTile(
//                 onTap: () async {
//                   final navigator = Navigator.of(context);
//                   await ref
//                       .read(initializationProvider)
//                       .logout()
//                       .catchError((e) {
//                     navigator.pushNamedAndRemoveUntil(
//                         LoginPage.routeName, (route) => false);
//                   });
//                   await navigator.pushNamedAndRemoveUntil(
//                       LoginPage.routeName, (route) => false);
//                   ref.invalidate(initializationProvider);
//                   //////////
//                 },
//                 leading: Container(
//                   padding: const EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: AppColor.primary.withOpacity(0.2),
//                   ),
//                   child: SvgPicture.asset(
//                     "assets/drawer_icons/signout.svg",
//                   ),
//                 ),
//                 title: Text(
//                   loc.appDrawerSignOut,
//                   style: applyRobotoFont(
//                     fontWeight: FontWeight.normal,
//                     color: AppColor.grey,
//                     fontSize: 14,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
