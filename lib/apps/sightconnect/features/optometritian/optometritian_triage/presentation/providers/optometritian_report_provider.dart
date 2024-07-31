import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/triage/data/models/optometrician_triage_response.dart';
import '../../../../../common/triage/domain/models/enums/triage_enums.dart';

var optometritianReportProvider =
    ChangeNotifierProvider<OptometritianReportProvider>((ref) {
  return OptometritianReportProvider(
    GlobalKey<NavigatorState>(),
  );
});

class OptometritianReportProvider extends ChangeNotifier {
  final GlobalKey<NavigatorState> _scaffoldKey;
  OptometritianReportProvider(this._scaffoldKey);
  GlobalKey<NavigatorState> get scaffoldKey => _scaffoldKey;

  Color getColorOnUrgency(Urgency urgency) {
    return switch (urgency) {
      Urgency.RED => AppColor.red,
      Urgency.YELLOW => AppColor.orange,
      Urgency.GREEN => AppColor.green,
    };
  }

  String getUrgencyText(Urgency urgency) {
    return switch (urgency) {
      Urgency.RED => "Urgent Consult",
      Urgency.YELLOW => "Early Consult",
      Urgency.GREEN => "Regular Consult",
    };
  }

  Color getColorOnUrgencyA(TriageUrgency urgency) {
    return switch (urgency) {
      TriageUrgency.EMERGENCY => AppColor.red,
      TriageUrgency.PRIORITY => AppColor.orange,
      TriageUrgency.ROUTINE => AppColor.green,
    };
  }

  String getUrgencyTextA(TriageUrgency urgency) {
    return switch (urgency) {
      TriageUrgency.EMERGENCY => "Urgent Consult",
      TriageUrgency.PRIORITY => "Early Consult",
      TriageUrgency.ROUTINE => "Regular Consult",
    };
  }

  Color _getChipUrgencyColor(double value) {
    if (value >= 1) {
      return AppColor.red;
    } else if (value >= 0.5) {
      return AppColor.orange;
    } else {
      return AppColor.green;
    }
  }

  List<Map<String, dynamic>> getTumblingEData(
    BuildContext context,
    double rightEyeSigth,
    double leftEyeSigth,
    double bothEyeSigth,
  ) {
    final loc = context.loc!;
    return [
      {
        "eye": loc.rightEyeString,
        "value": rightEyeSigth.toString(),
        "color": _getChipUrgencyColor(rightEyeSigth)
      },
      {
        "eye": loc.leftEyeString,
        "value": leftEyeSigth.toString(),
        "color": _getChipUrgencyColor(leftEyeSigth)
      },
      {
        "eye": loc.bothEyesString,
        "value": bothEyeSigth.toString(),
        "color": _getChipUrgencyColor(bothEyeSigth)
      },
    ];
  }
}
