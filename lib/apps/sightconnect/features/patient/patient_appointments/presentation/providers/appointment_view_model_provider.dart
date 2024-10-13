/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_appointments/data/models/uhi_search_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_appointments/presentation/providers/book_appointment_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart' as riverpod;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/repository/patient_appointment_repository_impl.dart';

var appointmentViewModelProvider =
    riverpod.Provider((ref) => AppointmentViewModelProvider(ref));

class AppointmentViewModelProvider {
  Ref ref;

  AppointmentViewModelProvider(this.ref);

  Future<bool> sendAppointmentDetails() async {
    var appointmentData = ref.watch(bookAppointmentProvider);
    var model = ref.watch(patientAppointmentRepositoryProvider);
    UhiSearchModel uhiSearchModel = UhiSearchModel(
      context: const Context(
        action: "search",
      ),
      message: Message(
        intent: Intent(
          descriptor: null,
          provider: null,
          fulfillment: Fulfillment(
            start: End(
              time: Time(
                  timestamp:
                      appointmentData.appointmentStartDateTime.toString()),
            ),
            end: End(
              time: Time(
                  timestamp: appointmentData.appointmentEndDateTime.toString()),
            ),
            type: "Teleconsultation",
          ),
          payment: null,
          category: null,
          item: const Item(
            descriptor:
                InstructionsClass(code: 'Consultation', name: 'Consultation'),
          ),
          tags: null,
        ),
      ),
    );

    var response = await model.sendAppointmentDetails(uhiSearchModel);
    return response;
  }
}
