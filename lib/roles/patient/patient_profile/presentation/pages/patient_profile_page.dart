import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/profile_app_bar.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants/app_color.dart';
import '../../../patient_vision_acuity_test/presentation/widgets/tumbling_overlay.dart';
import '../../data/local/fake_data_source.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/patient_profile_family_info_cards.dart';
import '../widgets/patient_profile_patient_info.dart';
import '../widgets/patient_profile_header.dart';

class PatientProfilePage extends StatelessWidget {
  const PatientProfilePage({super.key});

  static const String routeName = '/patient-profile';

  //   void _showTumblingOverlay(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     barrierDismissible: false, // Prevent closing by tapping outside
  //     builder: (BuildContext context) {
  //       return TumblingOverlay(isLoading: true, child: Text(''),);
  //     },
  //   );
  // }
  
  @override
  Widget build(BuildContext context) {
    return TumblingOverlay(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: AppColor.kScaffold,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.h),
          child: const ProfileAppBar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileHeader(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppSize.ksheight.verticalSpace,
                    ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Address",
                            style: applyFiraSansFont(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          AppSize.ksheight.verticalSpace,
                          Text(
                            profile["address"] ?? "",
                            style: applyRobotoFont(fontSize: 14.sp),
                          ),
                        ],
                      ),
                    ),
                    AppSize.ksheight.verticalSpace,
                    ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "General Information",
                            style: applyFiraSansFont(
                                fontSize: 18.sp, fontWeight: FontWeight.w800),
                          ),
                          AppSize.ksheight.verticalSpace,
                          PatientInfoCard(
                            keyText: "Date of Birth",
                            valueText: profile["dob"]!,
                          ),
                          PatientInfoCard(
                            keyText: "Blood Group",
                            valueText: profile["blood_group"]!,
                          ),
                          PatientInfoCard(
                            keyText: "Height",
                            valueText: profile["height"]!,
                          ),
                          PatientInfoCard(
                            keyText: "Weight",
                            valueText: profile["weight"]!,
                          ),
                        ],
                      ),
                    ),
                    const PatientFamilyDetails(),
                  ],
                ),
              ),
              // TumblingOverlay(isLoading: true,child: Text(''),),
            ],
          ),
        ),
      ),
    );
  }
}