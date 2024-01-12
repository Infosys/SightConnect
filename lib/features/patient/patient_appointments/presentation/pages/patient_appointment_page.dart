import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/constants/app_size.dart';
import '../../../../../core/models/patient_response_model.dart';
import '../../../../../core/providers/global_patient_provider.dart';
import '../../../../../shared/theme/text_theme.dart';
import '../../../../../shared/widgets/app_name_avatar.dart';
import '../../../../../shared/widgets/app_network_image.dart';
import '../widgets/appointment_patient_selector.dart';
import 'patient_book_appointment_page.dart';

class PatientAppointmentPage extends ConsumerWidget {
  const PatientAppointmentPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      extendBody: true,
      appBar: CustomAppbar(
        title: Text(loc.appointmentTitle),
        centerTitle: false,
        backgroundColor: Colors.transparent,
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PatientBookAppointmentPage(),
            ),
          );
        },
        child: Container(
          width: AppSize.width(context) * 0.43,
          height: AppSize.height(context) * 0.06,
          padding: const EdgeInsets.only(bottom: AppSize.ksheight - 1),
          margin: const EdgeInsets.only(bottom: AppSize.klheight),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColor.yellow,
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: AppColor.black,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '+ ',
                  style: applyRobotoFont(
                      fontSize: 28,
                      color: AppColor.black,
                      fontWeight: FontWeight.w300),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    'Book Appointment',
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ref.watch(getPatientProfileProvider).when(
        data: (data) {
          return _content(
            context,
            data,
            ref,
          );
        },
        error: (e, s) {
          return Center(
            child: Text(
              "Something went wrong",
              style: applyFiraSansFont(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

Widget _content(
  BuildContext context,
  PatientResponseModel patient,
  WidgetRef ref,
) {
  final loc = context.loc!;
  return Stack(
    children: [
      SvgPicture.asset(
        "assets/images/app_bg.svg",
        fit: BoxFit.contain,
      ),
      Padding(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: AppSize.height(context) * 0.12,
            ),
            AppointmentPatientSelector(
              patient: patient,
              relations:
                  patient.profile?.patient?.relatedParty?.reversed.toList() ??
                      [],
            ),
            const SizedBox(height: AppSize.ksheight),
            Divider(
              color: AppColor.grey.withOpacity(0.4),
              thickness: 1,
              height: 2,
            ),
            const SizedBox(height: AppSize.kmheight),
            Text(
              loc.appointmentSubtitle,
              style: applyFiraSansFont(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: AppSize.kmheight),
            ...patient.profile!.patient!.relatedParty!.asMap().entries.map((e) {
              final index = e.key;
              final patient = e.value;
              return Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "${patient.name ?? ""} has an appointment",
                        style: applyFiraSansFont(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColor.black,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: ListTile(
                              visualDensity: const VisualDensity(
                                  horizontal: 0, vertical: 0),
                              contentPadding: EdgeInsets.zero,
                              leading: patient.profilePicture != null
                                  ? Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: AppColor.blue,
                                          width: 3,
                                        ),
                                      ),
                                      child: AppNetworkImage(
                                        imageUrl: patient.profilePicture!,
                                      ),
                                    )
                                  : AppNameAvatar(
                                      name: patient.name!,
                                      radius: 20,
                                    ),
                              title: Text(
                                patient.name ?? "",
                                style: applyRobotoFont(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.black.withOpacity(0.8)),
                              ),
                              subtitle: Text(
                                patient.parentPatientId.toString() ?? "",
                                style: applyRobotoFont(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.grey,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColor.lightLavanderBlue,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: const EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  "Telephone Consultation",
                                  textAlign: TextAlign.center,
                                  style: applyRobotoFont(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.primary,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        patient.patientId.toString() ?? "",
                        style: applyRobotoFont(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: AppSize.ksheight,
                      ),
                      Text(
                        "14, Nagar Khana Hanuman Temple Road, Gowsala Nagar, Hyderabad, Telangana 500012",
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.grey,
                        ),
                        softWrap: true,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () async {
                              try {} catch (e) {
                                Fluttertoast.showToast(msg: "$e");
                              }
                            },
                            child: Text(
                              "Reschedule",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: applyRobotoFont(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColor.primary,
                              ),
                            ),
                          ),

                          const SizedBox(width: 24),
                          TextButton(
                            onPressed: () async {
                              try {} catch (e) {
                                Fluttertoast.showToast(msg: "$e");
                              }
                            },
                            child: Text(
                              "Cancel",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: applyRobotoFont(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColor.primary,
                              ),
                            ),
                          ),
                          const Spacer(),
                          //share icon in an Inkwell
                          InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.share_outlined,
                                color: AppColor.primary,
                                size: 20,
                                weight: 5,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              );
            })
          ],
        ),
      ),
    ],
  );
}
