import 'dart:developer';

import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/data/mappers/dynamic_form_json_mapper.dart';
import 'package:dynamic_form/data/models/dynamic_form_json_model.dart';
import 'package:dynamic_form/pages/form_builder_page.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:dynamic_form/shared/widgets/form_error_widget.dart';
import 'package:dynamic_form/shared/widgets/loader_widget.dart';
import 'package:flutter/material.dart';

class DynamicFormPage extends StatefulWidget {
  const DynamicFormPage({
    super.key,
    this.onSubmit,
    this.backButtonIcon = Icons.arrow_back,
    this.enableDraft = false,
    this.canPop = false,
    this.initialValue,
    required this.json,
  });

  final Function(Map<String, dynamic>? data, DynamicFormSavingType mode)?
      onSubmit;
  final bool enableDraft;
  final dynamic json;
  final dynamic initialValue;
  final IconData backButtonIcon;
  final bool canPop;

  @override
  _DynamicFormPageState createState() => _DynamicFormPageState();
}

class _DynamicFormPageState extends State<DynamicFormPage> {
  late Future<ResponseJsonEntity>? _futureJson;

  @override
  void initState() {
    super.initState();
    _futureJson = _loadJson();
  }

  Future<ResponseJsonEntity>? _loadJson() async {
    try {
      Log.f(widget.json);
      return DynamicFormJsonMapper().modeltoEntity(
          dynamicFormModel: ResponseJsonModel.fromJson(widget.json),
          initialValues: const {
            // "preliminaryRequest.toDonateOrganTissue": ["CORNEA"],
            "preliminaryRequest.consignmentNotificationDateTime":
                "2024-08-25T06:30:00.000Z",
            "preliminaryRequest.referralMethod": "VOLUNTARY_FAMILY_INITIATED",
            "preliminaryRequest.counselling.counselor.name": "Rohit",
            "preliminaryRequest.counselling.counselor.phoneNumber":
                "9999999999",
            "preliminaryRequest.counselling.counselor.counselorDetailSource":
                "MAX",
            "preliminaryRequest.unit": "ICU",
            "preliminaryRequest.unitDetails": "Unit Details",
            "preliminaryRequest.counselling.counselor.address": "Near Vaishali",
            "preliminaryRequest.counselling.counselor.address.pincode":
                "201007",
            "preliminaryRequest.firstName": "Donor",
            "preliminaryRequest.lastName": "Family Name",
            "preliminaryRequest.dob": "1999-08-24T18:30:00.000Z",
            "preliminaryRequest.age": "54",
            "preliminaryRequest.gender": "MALE",
            "preliminaryRequest.religion": "Religion",
            "preliminaryRequest.height": "180",
            "preliminaryRequest.weight": "84",
            "preliminaryRequest.name": "Max",
            "preliminaryRequest.mrn": "1123",
            "preliminaryRequest.admissionDateTime": "2024-08-25T06:30:00.000Z",
            "preliminaryRequest.attendingPhysician.name": "Ramu",
            "preliminaryRequest.deathCause": "cause of Death",
            "preliminaryRequest.deathCircumstances": "Leading to Death",
            "preliminaryRequest.deathTime": "2024-08-25T06:30:00.000Z",
            "preliminaryRequest.isActualDeathTime": "NO",
            "preliminaryRequest.generalScreening.properties.general_screening.inLifeSupport":
                "NO",
            "preliminaryRequest.generalScreening.properties.general_screening.duration":
                "Yes",
            "preliminaryRequest.generalScreening.properties.general_screening.durationUnit":
                "DAYS",
            "preliminaryRequest.generalScreening.properties.general_screening.isHistoryOfHIV":
                "NO",
            "preliminaryRequest.generalScreening.properties.general_screening.isHistoryOfHBV":
                "NO",
            "preliminaryRequest.generalScreening.properties.general_screening.isHistoryOfHCV":
                "NO",
            "preliminaryRequest.generalScreening.properties.general_screening.isHistoryOfCancer":
                "NO",
            "preliminaryRequest.generalScreening.properties.general_screening.isDementia":
                "NO",
            "preliminaryRequest.generalScreening.properties.general_screening.isAlzheimer":
                "NO",
            "preliminaryRequest.generalScreening.properties.general_screening.isCNSDisease":
                "NO",
            "preliminaryRequest.generalScreening.properties.general_screening.inIsolation":
                "NO",
            "preliminaryRequest.generalScreening.properties.general_screening.isSystemicInfectionSymptoms":
                "NO",
            "preliminaryRequest.generalScreening.properties.general_screening.ivFluidAmt":
                "last hour",
            "preliminaryRequest.generalScreening.properties.general_screening.bloodAmount":
                "48",
            "preliminaryRequest.generalScreening.properties.general_screening.transferredRemark":
                "transferred",
            "preliminaryRequest.generalScreening.properties.general_screening.medicalHx":
                "Hx",
            "preliminaryRequest.generalScreening.properties.general_screening.socialAndBehavioralHx":
                "Behave",
            "preliminaryRequest.generalScreening.outcome.status": "REJECTED",
            "preliminaryRequest.generalScreening.outcome.remarks": "remark",
            // "preliminaryRequest.tissueScreening.productCode": ["TISSUE"],
            // "preliminaryRequest.tissueScreening.productCategory": ["CORNEA"],
            "preliminaryRequest.tissueScreening.properties.hx": "NO",
            "preliminaryRequest.tissueScreening.properties.notScreened":
                "not screnned",
            "preliminaryRequest.tissueScreening.properties.notSuitable":
                "unsuitable ",
            "preliminaryRequest.tissueScreening.properties.notProceeded":
                "not proceeded",
            "preliminaryRequest.tissueScreening.outcome.status": "REJECTED",
            "preliminaryRequest.tissueScreening.outcome.remarks":
                "Outocme remark ",
            "preliminaryRequest.isMedicoLegalCase": "NO",
            "preliminaryRequest.isDonationPermitted": "NO",
            "preliminaryRequest.medicoLegalId": "case id",
            "preliminaryRequest.medicoLegalFacility": "faility",
            "preliminaryRequest.releasedBy": "release",
            "preliminaryRequest.contactNumber": "9882222222",
            "preliminaryRequest.notes": "restriction",
            "preliminaryRequest.specialCases": "request",
            "preliminaryRequest.autopsyId": "autopsy",
            "preliminaryRequest.autopsyPerformer": "perfomed by",
            "preliminaryRequest.autopsyLocation": "lcoation",
            // "preliminaryRequest.consent.type": ["KIN_DONATION_CONSENT"]
          });
    } catch (e) {
      log('DF:Error Converting json: $e');
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _futureJson,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final pages = snapshot.data?.pages ?? [];
          final title = snapshot.data?.name ?? '';
          final FormLayoutType formLayout =
              snapshot.data?.formLayoutType ?? FormLayoutType.PANEL;
          return FormBuilderPage(
            pages: pages,
            title: title,
            onSubmit: widget.onSubmit,
            layoutType: formLayout,
            backButtonIcon: widget.backButtonIcon,
            enableDraft: widget.enableDraft,
            canPop: widget.canPop,
          );
        } else if (snapshot.hasError) {
          return FormErrorWidget(
            error: snapshot.error,
            stackTrace: snapshot.stackTrace.toString(),
          );
        } else {
          return const LoaderWidget();
        }
      },
    );
  }
}
