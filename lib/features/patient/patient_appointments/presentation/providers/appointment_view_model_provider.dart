import 'package:eye_care_for_all/features/patient/patient_appointments/data/models/uhi_search_model.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/providers/book_appointment_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart' as riverpod;
import 'package:hooks_riverpod/hooks_riverpod.dart';

var appointmentViewModelProvider =
    riverpod.Provider((ref) => AppointmentViewModelProvider(ref));

class AppointmentViewModelProvider {
  Ref ref;

  AppointmentViewModelProvider(this.ref);
  void sendAppointmentDetails() {

   

  // {"context":{ "domain": "BOOKING_APP", "country": "IND", "city": "std:011", "action": "search", "core_version": "0.7.1",
  //  "consumer_id": "eua-nha", "consumer_uri": "http://localhost:8901/services/eua-client/api/v1/euaService", 
  //  "message_id": "dfa04e10-63ec-11ed-9f98-49dd5c7c4d8a", "timestamp": "2022-11-14T07:20:54.005277Z", "transaction_id":
  //   "dfa04e10-63ec-11ed-9f98-49dd5c7c4d8a" }, "message": { "intent": { "fulfillment": { "agent": { "id": "ganeshborse@hpr.ndhm" },
  //    "start": { "time": { "timestamp": "2022-07-22T13:21:41" } }, "end": { "time": { "timestamp": "2022-07-22T23:59:59" } }, 
  //    "type": "Teleconsultation" }, "item": { "descriptor": { "code": "Consultation", "name": "Consultation" } } } } }


    Fulfillment fulfillment =  Fulfillment(
    //   { "agent": { "id": "ganeshborse@hpr.ndhm" },
    //  "start": { "time": { "timestamp": "2022-07-22T13:21:41" } }, "end": { "time": { "timestamp": "2022-07-22T23:59:59" } }, 
    //  "type": "Teleconsultation" }
      agent: Agent(id: ''),
      
    );

    Intent intent = const Intent(
      descriptor: null,
      provider: null,
      fulfillment: null,
      payment: null,
      category: null,
      item: null,
      tags: null,
    );


    UhiSearchModel uhiSearchModel = const UhiSearchModel(
      context: null,
      message: null,
    );
  }
}
