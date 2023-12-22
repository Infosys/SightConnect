import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';

var visionTechnicianReportPageProvider =
    ChangeNotifierProvider((ref) => VisionTechnicianReportPageProvider());

class VisionTechnicianReportPageProvider extends ChangeNotifier {
    
   DiagnosticReportTemplateFHIRModel? _diagnosticReportTemplateFHIRModel;

   

}