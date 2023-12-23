import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/domain/models/profile_model.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/presentation/provider/patient_profile_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ResultPageTopCard extends ConsumerWidget {
  const ResultPageTopCard({
    super.key,
    this.triageResult,
   
    this.id,
  
  });
  final Map<String, dynamic>? triageResult;
 
  final int? id;
 

  @override
  Widget build( BuildContext context, WidgetRef ref) {
    DateTime todayDate = DateTime.now();
    PatientResponseModel? patientResponseModel=  ref.read(getPatientProfileByIdProvider(id!)).asData?.value;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 0,
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppSize.width(context) * 0.05,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColor.lightGrey.withOpacity(0.4),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: AppSize.width(context) * 0.29,
                    child: Text(
                      patientResponseModel?.profile?.patient?.name ?? "",
                      style: applyRobotoFont(
                          fontSize: 14, fontWeight: FontWeight.w600),
                      softWrap: true,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "PID:$id",
                    softWrap: true,
                    style: applyRobotoFont(
                        fontSize: 11, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
          Visibility(
            visible: triageResult != null,
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: triageResult!['color'].withOpacity(0.2),
                    offset: const Offset(0, 2),
                    blurRadius: 20,
                    spreadRadius: 20,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                color: AppColor.white,
                border: Border.symmetric(
                  horizontal: BorderSide(
                    color: triageResult!['color'],
                    width: 2,
                  ),
                  vertical: BorderSide(
                    color: triageResult!['color'],
                    width: 1,
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSize.width(context) * 0.01,
                          ),
                          decoration: BoxDecoration(
                            color: triageResult!['color'],
                          ),
                          child: Text(
                            triageResult!['labelText'] ?? "",
                            style: applyRobotoFont(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: AppColor.white),
                          )),
                      const Spacer(),
                      Text(
                        todayDate.formateDate,
                        style: applyRobotoFont(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    triageResult!['issueInfo'],
                    textAlign: TextAlign.left,
                    softWrap: true,
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          ),
           Positioned(
            top: -15,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(0, 2),
                    blurRadius: 4,
                    spreadRadius: 0,
                  ),
                ],
                borderRadius: BorderRadius.circular(100),
                color: AppColor.white,
                border: Border.all(
                  color: AppColor.white,
                  width: 4,
                ),
              ),
              child: patientResponseModel == null
                  ? const CircleAvatar(
                      backgroundColor: AppColor.lightGrey,
                      radius: 40,
                    )
                  : AppNetworkImage(
                      imageUrl: patientResponseModel.profile!.patient!.profilePhoto!,
                      radius: 40,
                    ),
            ),
          )
        ],
      ),
    );
  }
}
