import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/features/admin/dashboard/presentation/pages/admin_dashboard_pages.dart';
import 'package:eye_care_for_all/features/consultant/dashboard/presentation/counselor_dashboard_page.dart';
import 'package:eye_care_for_all/features/doctor/dashboard/presentation/pages/doctor_dashboard_page.dart';
import 'package:eye_care_for_all/features/technician/dashboard/presentation/pages/technician_dashboard_page.dart';
import 'package:flutter/material.dart';

class EyeBankDashboardPage extends StatefulWidget {
  const EyeBankDashboardPage({super.key});

  @override
  State<EyeBankDashboardPage> createState() => _EyeBankDashboardPageState();
}

class _EyeBankDashboardPageState extends State<EyeBankDashboardPage> {
  EyeBankRoles role = EyeBankRoles.DOCTOR;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 2,
        title: Image.asset(
          AppImages.logo,
          height: 30,
        ),
        actions: [
          const IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
          ),
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.notifications),
          ),
          PopupMenuButton<EyeBankRoles>(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.person,
                    color: AppColor.grey,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    role.name,
                    style: const TextStyle(color: AppColor.grey),
                  ),
                ],
              ),
            ),
            onSelected: (value) {
              setState(() {
                role = value;
              });
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<EyeBankRoles>>[
              const PopupMenuItem<EyeBankRoles>(
                value: EyeBankRoles.DOCTOR,
                child: Text('Doctor'),
              ),
              const PopupMenuItem<EyeBankRoles>(
                value: EyeBankRoles.ADMIN,
                child: Text('Admin'),
              ),
              const PopupMenuItem<EyeBankRoles>(
                value: EyeBankRoles.TECHNICIAN,
                child: Text('Technician'),
              ),
              const PopupMenuItem<EyeBankRoles>(
                value: EyeBankRoles.COUNSELOR,
                child: Text('Counselor'),
              ),
            ],
          ),
        ],
      ),

      // create a switch case based on role

      body: () {
        switch (role) {
          case EyeBankRoles.DOCTOR:
            return const DoctorDashBoardPage();
          case EyeBankRoles.ADMIN:
            return const AdminDashboardPages();
          case EyeBankRoles.TECHNICIAN:
            return const TechnicianDashboardPage();
          case EyeBankRoles.COUNSELOR:
            return const CounselorDashboardPage();
          default:
            return Container();
        }
      }(),
    );
  }
}

enum EyeBankRoles {
  DOCTOR,
  ADMIN,
  TECHNICIAN,
  COUNSELOR,
}
