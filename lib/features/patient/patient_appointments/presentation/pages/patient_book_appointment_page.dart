import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/data/models/eua_on_search_model.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/providers/appointment_view_model_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/widgets/appointment_date_selector.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/widgets/appointment_patient_selector.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/widgets/consultation_type.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/widgets/eye_problem_type.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/widgets/nearby_eye_clinic.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/widgets/select_time.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/constants/app_icon.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../shared/theme/text_theme.dart';
import '../../data/source/patient_appointment_remote_source.dart';
import '../providers/book_appointment_provider.dart';

class PatientBookAppointmentPage extends HookConsumerWidget {
  const PatientBookAppointmentPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(bookAppointmentProvider);
    ref.read(appointmentViewModelProvider).sendAppointmentDetails();
    var selectedDoctor = useState<int>(-1);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.scaffoldBg),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: const CustomAppbar(
          title: Text('Book Appointment'),
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            left: AppSize.kmpadding,
            right: AppSize.kmpadding,
            top: AppSize.height(context) * 0.12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Patient",
                style: applyFiraSansFont(fontSize: 18),
              ),
              const SizedBox(
                height: AppSize.klelevation,
              ),
              ref.watch(getPatientProfileProvider).when(data: (patient) {
                return AppointmentPatientSelector(
                  patient: patient,
                  relations: patient.profile?.patient?.relatedParty?.reversed
                          .toList() ??
                      [],
                  enableAllButton: false,
                  isAddFamilyEnabled: true,
                );
              }, error: (e, s) {
                return Container();
              }, loading: () {
                return Container();
              }),
              const SizedBox(height: AppSize.klheight),
              const EyeProblemType(),
              const SizedBox(height: AppSize.klheight),
              Text(
                "Consultation Type",
                style: applyFiraSansFont(fontSize: 18),
              ),
              const ConsultationType(),
              const SizedBox(height: AppSize.klheight),
              Visibility(
                visible:
                    model.selectedConsultationType == "In Clinic Consultation",
                child: const NearbyEyeClinic(),
              ),
              const SizedBox(height: AppSize.klheight),
              const AppointmentDateSelector(),
              const SizedBox(height: AppSize.klheight),
              const SelectTime(),
              const SizedBox(height: AppSize.klheight),
              StreamBuilder(
                stream: ref.read(appointmentRemoteSourceProvider).doctorStream,
                builder: (context, snapshot) {
                  if (snapshot.hasData && snapshot.data != null) {
                    EuaOnSearchModel doctorsList = snapshot.data;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: doctorsList.message!.catalog!.providers!.first
                          .fulfillments!.length,
                      itemBuilder: (BuildContext context, int index) {
                        var doctorsData = doctorsList.message!.catalog!
                            .providers!.first.fulfillments![index];
                        return InkWell(
                          onTap: () {
                            if (selectedDoctor.value != index) {
                              selectedDoctor.value = index;
                            } else {
                              selectedDoctor.value = -1;
                            }
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            decoration: BoxDecoration(
                              color: AppColor.white,
                              border: Border.all(
                                color: selectedDoctor.value == index
                                    ? AppColor.primary
                                    : AppColor.white,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: selectedDoctor.value == index
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
                                const CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(
                                    AppImages.doctor,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      doctorsData.agent?.name ?? "",
                                      style: applyFiraSansFont(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      doctorsData.agent?.cred ??
                                          "MBBS, MS - Ophthalmology ",
                                      style: applyFiraSansFont(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      doctorsData.agent?.email ??
                                          "Ophthalmologist/Eye Surgeon ",
                                      style: applyFiraSansFont(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  onTap: () async {
                                    Uri phoneno = Uri.parse(
                                        "tel:${doctorsData.agent?.phone ?? ""}");
                                    await launchUrl(phoneno);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                      color: AppColor.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: SvgPicture.asset(
                                      AppIcon.call,
                                      height: 20,
                                      width: 20,
                                      colorFilter: const ColorFilter.mode(
                                        AppColor.primary,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return const Center(
                        child: CircularProgressIndicator.adaptive());
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
