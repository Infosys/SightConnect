import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/providers/book_appointment_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:flutter_native_splash/cli_commands.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';
import '../../../../../core/models/patient_response_model.dart';
import '../../../../../core/providers/global_patient_provider.dart';
import '../../../../../main.dart';
import '../../../../../shared/theme/text_theme.dart';
import '../../../../../shared/widgets/app_name_avatar.dart';
import '../../../../../shared/widgets/app_network_image.dart';
import '../../../../common_features/initialization/pages/patient_registeration_miniapp_page.dart';

class AppointmentPatientSelector extends HookConsumerWidget {
  const AppointmentPatientSelector(
      {super.key,
      required this.patient,
      required this.relations,
      this.enableAllButton = false,
      this.isAddFamilyEnabled = false});

  final PatientResponseModel patient;
  final List<RelatedPartyModel> relations;
  final bool enableAllButton;
  final bool isAddFamilyEnabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(bookAppointmentProvider);
    final loc = context.loc!;
    var isSelected = useState<int>(-1);
    return Row(
      children: [
        Center(
          child: SizedBox(
            width: isAddFamilyEnabled
                ? AppSize.width(context) * 0.7
                : AppSize.width(context) * 0.91,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  if (enableAllButton)
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            isSelected.value = -1;
                          },
                          child: Container(
                            height: AppSize.height(context) * 0.06,
                            padding: const EdgeInsets.symmetric(
                                horizontal: AppSize.kspadding,
                                vertical: AppSize.kspadding - 2),
                            decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: isSelected.value == -1
                                    ? AppColor.primary
                                    : Colors.white,
                                width: 1.5,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: isSelected.value == -1
                                        ? AppColor.primary
                                        : Colors.grey.withOpacity(0.6),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                ),
                                const SizedBox(width: AppSize.kswidth - 2),
                                Text(
                                  "All",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: applyRobotoFont(
                                    fontSize: 14,
                                    color: AppColor.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: AppSize.kspadding),
                      ],
                    ),
                  InkWell(
                    onTap: () {
                      isSelected.value = patient.profile!.patient!.patientId!;
                      model.setSelectedPatientDetails(
                          patient.profile!.patient!.name!,
                          patient.profile!.patient!.patientId.toString());
                    },
                    child: Container(
                      height: AppSize.height(context) * 0.06,
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppSize.kspadding,
                          vertical: AppSize.kspadding - 2),
                      decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: isSelected.value ==
                                    patient.profile!.patient!.patientId!
                                ? AppColor.primary
                                : Colors.white,
                            width: 1.5,
                          )),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: isSelected.value ==
                                      patient.profile!.patient!.patientId!
                                  ? AppColor.primary
                                  : Colors.grey.withOpacity(0.6),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 12,
                            ),
                          ),
                          const SizedBox(width: AppSize.kspadding - 2),
                          patient.profile?.patient?.profilePhoto != null
                              ? Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: AppColor.blue,
                                      width: 3,
                                    ),
                                  ),
                                  child: AppNetworkImage(
                                    imageUrl:
                                        patient.profile!.patient!.profilePhoto!,
                                  ),
                                )
                              : AppNameAvatar(
                                  name: patient.profile!.patient!.name!,
                                  radius: 16,
                                  fontSize: 12,
                                ),
                          const SizedBox(width: AppSize.kswidth - 2),
                          Text(
                            _formateFirstName(patient.profile!.patient!.name!),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: applyRobotoFont(
                              fontSize: 14,
                              color: AppColor.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSize.kspadding),
                  SizedBox(
                    height: AppSize.height(context) * 0.06,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: relations.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            isSelected.value = relations[index].patientId!;
                            model.setSelectedPatientDetails(
                                relations[index].name!,
                                relations[index].patientId.toString());
                          },
                          child: Container(
                            height: AppSize.height(context) * 0.06,
                            margin:
                                const EdgeInsets.only(right: AppSize.kspadding),
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppSize.kspadding,
                              vertical: AppSize.kspadding - 2,
                            ),
                            decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: isSelected.value ==
                                        relations[index].patientId!
                                    ? AppColor.primary
                                    : Colors.white,
                                width: 1.5,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: isSelected.value ==
                                            relations[index].patientId!
                                        ? AppColor.primary
                                        : Colors.grey.withOpacity(0.6),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                ),
                                const SizedBox(width: AppSize.kspadding - 2),
                                relations[index].profilePicture != null
                                    ? Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: AppColor.blue,
                                            width: 3,
                                          ),
                                        ),
                                        child: AppNetworkImage(
                                          imageUrl:
                                              relations[index].profilePicture!,
                                        ),
                                      )
                                    : AppNameAvatar(
                                        name: relations[index].name!,
                                        radius: 16,
                                        fontSize: 12,
                                      ),
                                const SizedBox(width: AppSize.kswidth - 2),
                                Text(
                                  _formateFirstName(relations[index].name!),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: applyRobotoFont(
                                    fontSize: 14,
                                    color: AppColor.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        if (isAddFamilyEnabled)
          Row(
            children: [
              const SizedBox(
                height: 40,
                child: VerticalDivider(
                  thickness: 2,
                  width: AppSize.klelevation,
                  color: AppColor.lightGrey,
                ),
              ),
              Consumer(
                builder: (context, ref, child) => InkWell(
                  customBorder: const CircleBorder(),
                  onTap: () {
                    try {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PatientRegistrationMiniappPage(
                            actionType: MiniAppActionType.ADD_MEMBER,
                            displayName: loc.myConnectionsAddMember,
                          ),
                        ),
                      ).then(
                        (value) {
                          logger.d({"Profile Page add Miniapp": value});
                          if (value == null || value == false) {
                            Fluttertoast.showToast(
                                msg: "Family member not added");
                          } else if (value) {
                            Fluttertoast.showToast(msg: "Family member added");
                            ref.invalidate(getPatientProfileProvider);
                          }
                        },
                      );
                    } catch (e) {
                      logger.d({"error": e});
                      Fluttertoast.showToast(
                        msg: loc.myConnectionsServiceNotAvailable,
                      );
                    }
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: AppColor.blue,
                            width: 1,
                          ),
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 20,
                          color: AppColor.blue,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        loc.myConnectionsAddMember,
                        style: applyRobotoFont(
                          fontSize: 10,
                          color: AppColor.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }

  _formateFirstName(String name) {
    if (name.isEmpty) {
      return "";
    } else {
      return name.split(" ")[0].capitalize();
    }
  }
}
