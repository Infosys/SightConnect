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
    this.readOnly = false,
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
  final bool readOnly;

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
        initialValues: widget.initialValue as Map<String, dynamic>?,

        // widget.initialValue as Map<String, dynamic>?,
      );

      // initialValues: {
      //   "corneaRetrievalRequest.penLightAssessment.propeties.penlight": [
      //     {
      //       "corneaRetrievalRequest.penLightAssessment.productCode":
      //           "CORNEA_OD",
      //       "corneaRetrievalRequest.penLightAssessment.productIdentifier":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.superiorLidCondition":
      //           "UNREMARKABLE",
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.superiorLidRemark":
      //           "sample",
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.inferiorLidCondition":
      //           "INFLAMMATION",
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.inferiorLidRemark":
      //           "sample",
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.conjunctivaCondition":
      //           "INFLAMMATION",
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.conjunctivaRemark":
      //           "sample",
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.epitheliumCondition":
      //           "sample",
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.cornealStromaCondition":
      //           "UNREMARKABLE",
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.cornealStromaConditionRemark":
      //           "PHAKIC",
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.intraOcularCondition":
      //           "BROWN",
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.pupilDiameter":
      //           "sample",
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.abnormalities":
      //           "sample",
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.isEvidenceOfSurgery":
      //           0,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.surgeryRemark":
      //           "sample",
      //       "corneaRetrievalRequest.penLightAssessment.performedBy":
      //           "sample",
      //       "corneaRetrievalRequest.penLightAssessment.outcome.status":
      //           "REJECTED",
      //       "corneaRetrievalRequest.penLightAssessment.outcome.remark":
      //           "sample"
      //     }
      //   ],
      //   "corneaRetrievalRequest.recoveryInformation": [
      //     {
      //       "corneaRetrievalRequest.recoveryInformation.productCode":
      //           "CORNEA_OS",
      //       "corneaRetrievalRequest.recoveryInformation.productIdentifier":
      //           null,
      //       "corneaRetrievalRequest.recoveryInformation.extractionMethod":
      //           "IN_SITU",
      //       "corneaRetrievalRequest.recoveryInformation.extractionDateTime":
      //           "2024-08-25T06:30:00.000Z",
      //       "corneaRetrievalRequest.recoveryInformation.performedBy":
      //           "details",
      //       "corneaRetrievalRequest.recoveryInformation.assistedBy":
      //           "details",
      //       "corneaRetrievalRequest.recoveryInformation.properties.comments":
      //           "details",
      //       "corneaRetrievalRequest.recoveryInformation.intent": "RESEARCH",
      //       "corneaRetrievalRequest.recoveryInformation.storageMedium":
      //           "MK_MEDIUM",
      //       "corneaRetrievalRequest.recoveryInformation.lotNumber":
      //           "details",
      //       "corneaRetrievalRequest.recoveryInformation.expirationDate":
      //           "2024-08-25T06:30:00.000Z",
      //       "corneaRetrievalRequest.recoveryInformation.properties.scleraRecovered":
      //           0
      //     }
      //   ],
      //   "corneaRetrievalRequest.deathVerifiedBy": "DEATH_CERTIFICATE",
      //   "corneaRetrievalRequest.coolingType": "NOT_COOLED",
      //   "corneaRetrievalRequest.refrigerationTime":
      //       "2024-08-25T06:30:00.000Z",
      //   "corneaRetrievalRequest.deRefrigerationTime":
      //       "2024-08-25T06:30:00.000Z",
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.isIdentifiedUsingIDTag":
      //       1,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.identifiedBy":
      //       "Yes",
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.identifiedThrough":
      //       "No",
      //   "corneaRetrievalRequest.physicalAssessment.performedBy": "No",
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.physicalExaminationFinding":
      //       "Findings",
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.isJaundice":
      //       1,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.isIcetrus":
      //       0,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.evidenceOfSexuallyTransmittedDisease":
      //       0,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.isLymphadenopathy":
      //       0,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.isWhiteSpotsInMouth":
      //       1,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.whiteSpotsInMouth":
      //       "details",
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.needleTrackOrSignOfIVDrugs":
      //       0,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.isColouredSpotsOrLesions":
      //       1,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.isEvidenceOfBloodLoss":
      //       1,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.isSkinLesions":
      //       1,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.isEvidenceOfSmallpoxVaccinationOrScab":
      //       true,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.isMucusMembraneHemorrhages":
      //       true,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.remarks":
      //       "details",
      //   "corneaRetrievalRequest.physicalAssessment.outcome.status":
      //       "REJECTED",
      //   "corneaRetrievalRequest.physicalAssessment.outcome.remark":
      //       "details",
      //   "corneaRetrievalRequest.labReport.properties.wbc.isWbcPerformed": 0,
      //   "corneaRetrievalRequest.labReport.properties.wbc.metrics.dateTime":
      //       "2024-08-25T06:30:00.000Z",
      //   "corneaRetrievalRequest.labReport.properties.wbc.metrics.count":
      //       "123",
      //   "corneaRetrievalRequest.labReport.properties.temperature.isRecorded":
      //       1,
      //   "corneaRetrievalRequest.labReport.properties.temperature.notRecordedReason":
      //       "details",
      //   "corneaRetrievalRequest.labReport.properties.temperature.metrics.dateTime":
      //       "2024-08-25T06:30:00.000Z",
      //   "corneaRetrievalRequest.labReport.properties.temperature.metrics.result":
      //       "details",
      //   "corneaRetrievalRequest.labReport.properties.temperature.metrics.units":
      //       "details",
      //   "corneaRetrievalRequest.labReport.properties.cultures.isCultures":
      //       1,
      //   "corneaRetrievalRequest.labReport.properties.cultures.metrics.cultureSource":
      //       "details",
      //   "corneaRetrievalRequest.labReport.properties.cultures.metrics.dateTime":
      //       "2024-08-25T06:30:00.000Z",
      //   "corneaRetrievalRequest.labReport.properties.cultures.metrics.result":
      //       "details",
      //   "corneaRetrievalRequest.labReport.outcome.status": "ACCEPTED",
      //   "corneaRetrievalRequest.labReport.outcome.remark": "details",
      //   "corneaRetrievalRequest.sample.collectedOn":
      //       "2024-08-25T06:30:00.000Z",
      //   "corneaRetrievalRequest.sample.wasCollectedPreMortem":
      //       "POST_MORTEM",
      //   "corneaRetrievalRequest.sample.collectedBy": "details",
      //   "corneaRetrievalRequest.hemodilution.properties.details.donorName":
      //       "details",
      //   "corneaRetrievalRequest.hemodilution.samples.collectedOn":
      //       "2024-08-25T06:30:00.000Z",
      //   "corneaRetrievalRequest.hemodilution.samples.collectedBy":
      //       "details",
      //   "corneaRetrievalRequest.hemodilution.properties.details.wasDonorInfusedOrTransfused":
      //       0,
      //   "corneaRetrievalRequest.hemodilution.properties.details.isDonorsAgeGreaterThan12Years":
      //       1,
      //   "corneaRetrievalRequest.hemodilution.properties.details.isBloodLossOccured":
      //       1,
      //   "corneaRetrievalRequest.hemodilution.properties.bloodProducts.bloodProduct":
      //       "details",
      //   "corneaRetrievalRequest.hemodilution.properties.bloodProducts.dateTime":
      //       "2024-08-25T06:30:00.000Z",
      //   "corneaRetrievalRequest.hemodilution.properties.bloodProducts.volume":
      //       "details",
      //   "corneaRetrievalRequest.hemodilution.properties.bloodProducts.totalBloodProductsTranfused":
      //       "details",
      //   "corneaRetrievalRequest.hemodilution.properties.colloid.colloidDesc":
      //       "details",
      //   "corneaRetrievalRequest.hemodilution.properties.colloid.dateTime":
      //       "2024-08-25T06:30:00.000Z",
      //   "corneaRetrievalRequest.hemodilution.properties.colloid.volume":
      //       "details",
      //   "corneaRetrievalRequest.hemodilution.properties.colloid.totalColloidsTranfused":
      //       "details",
      //   "corneaRetrievalRequest.hemodilution.properties.crystalloid.crystalloidDesc":
      //       "details",
      //   "corneaRetrievalRequest.hemodilution.properties.crystalloid.dateTime":
      //       "2024-08-25T06:30:00.000Z",
      //   "corneaRetrievalRequest.hemodilution.properties.crystalloid.volume":
      //       "details",
      //   "corneaRetrievalRequest.hemodilution.properties.crystalloid.totalCrystalloidsTranfused":
      //       "details",
      //   "corneaRetrievalRequest.hemodilution.properties.crystalloid.ABC":
      //       "details",
      //   "corneaRetrievalRequest.hemodilution.properties.crystalloid.BC":
      //       "details",
      //   "corneaRetrievalRequest.hemodilution.properties.corneaEvaluation.PV":
      //       "details",
      //   "corneaRetrievalRequest.hemodilution.properties.corneaEvaluation.BV":
      //       "details",
      //   "corneaRetrievalRequest.hemodilution.properties.isBCGreaterPV": 1,
      //   "corneaRetrievalRequest.hemodilution.properties.isABCGreaterPV": 0,
      //   "corneaRetrievalRequest.hemodilution.properties.isAcecepted": 0,
      //   "corneaRetrievalRequest.hemodilution.properties.rejected.initial":
      //       "details",
      //   "corneaRetrievalRequest.hemodilution.properties.rejected.date":
      //       "2024-08-25T06:30:00.000Z",
      //   "corneaRetrievalRequest.hemodilution.performedOn":
      //       "2024-08-25T06:30:00.000Z",
      //   "corneaRetrievalRequest.hemodilution.outcome.status": "ACCEPTED",
      //   "corneaRetrievalRequest.hemodilution.outcome.remark": "details"
      // });
    } catch (e) {
      Log.e('$e');
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
            readOnly: widget.readOnly,
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
