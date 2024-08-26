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
          initialValues: widget.initialValue as Map<String, dynamic>?);

      // initialValues: {
      //   "corneaRetrievalRequest.penLightAssessment": [
      //     {
      //       "corneaRetrievalRequest.penLightAssessment.productCode":
      //           "CORNEA_OD",
      //       "corneaRetrievalRequest.penLightAssessment.productIdentifier":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.superiorLidCondition":
      //           "UNREMARKABLE",
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.superiorLidRemark":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.inferiorLidCondition":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.inferiorLidRemark":
      //           "sample",
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.conjunctivaCondition":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.conjunctivaRemark":
      //           "sample",
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.epitheliumCondition":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.epitheliumRemark":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.cornealStromaCondition":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.cornealStromaConditionRemark":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.intraOcularCondition":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.irisColour":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.pupilDiameter":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.abnormalities":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.isEvidenceOfSurgery":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.surgeryRemark":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.performedBy": null,
      //       "corneaRetrievalRequest.penLightAssessment.outcome.status":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.outcome.remark": null
      //     },
      //     {
      //       "corneaRetrievalRequest.penLightAssessment.productCode":
      //           "CORNEA_OS",
      //       "corneaRetrievalRequest.penLightAssessment.productIdentifier":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.superiorLidCondition":
      //           "UNREMARKABLE",
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.superiorLidRemark":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.inferiorLidCondition":
      //           "INFLAMMATION",
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.inferiorLidRemark":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.conjunctivaCondition":
      //           "INFLAMMATION",
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.conjunctivaRemark":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.epitheliumCondition":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.epitheliumRemark":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.cornealStromaCondition":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.cornealStromaConditionRemark":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.intraOcularCondition":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.irisColour":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.pupilDiameter":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.abnormalities":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.isEvidenceOfSurgery":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.properties.penlight.surgeryRemark":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.performedBy": null,
      //       "corneaRetrievalRequest.penLightAssessment.outcome.status":
      //           null,
      //       "corneaRetrievalRequest.penLightAssessment.outcome.remark": null
      //     }
      //   ],
      //   "corneaRetrievalRequest.recoveryInformation": [
      //     {
      //       "corneaRetrievalRequest.recoveryInformation.productCode":
      //           "CORNEA_OD",
      //       "corneaRetrievalRequest.recoveryInformation.productIdentifier":
      //           null,
      //       "corneaRetrievalRequest.recoveryInformation.extractionMethod":
      //           "ENUCLEATION",
      //       "corneaRetrievalRequest.recoveryInformation.extractionDateTime":
      //           null,
      //       "corneaRetrievalRequest.recoveryInformation.performedBy": null,
      //       "corneaRetrievalRequest.recoveryInformation.assistedBy":
      //           "sample",
      //       "corneaRetrievalRequest.recoveryInformation.properties.comments":
      //           null,
      //       "corneaRetrievalRequest.recoveryInformation.intent": null,
      //       "corneaRetrievalRequest.recoveryInformation.storageMedium":
      //           null,
      //       "corneaRetrievalRequest.recoveryInformation.lotNumber": null,
      //       "corneaRetrievalRequest.recoveryInformation.expirationDate":
      //           null,
      //       "corneaRetrievalRequest.recoveryInformation.properties.scleraRecovered":
      //           null
      //     }
      //   ],
      //   "corneaRetrievalRequest.deathVerifiedBy": "DEATH_CERTIFICATE",
      //   "corneaRetrievalRequest.coolingType": "NOT_COOLED",
      //   "corneaRetrievalRequest.refrigerationTime":
      //       "2024-08-26T06:30:00.000Z",
      //   "corneaRetrievalRequest.deRefrigerationTime":
      //       "2024-08-26T06:30:00.000Z",
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.isIdentifiedUsingIDTag":
      //       0,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.identifiedBy":
      //       null,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.identifiedThrough":
      //       null,
      //   "corneaRetrievalRequest.physicalAssessment.performedBy": "sample",
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.physicalExaminationFinding":
      //       "sample",
      //   "corneaRetrievalRequest.physicalAssessment.properties.isJaundice":
      //       0,
      //   "corneaRetrievalRequest.physicalAssessment.properties.isIcetrus": 0,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.evidenceOfSexuallyTransmittedDisease":
      //       0,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.isLymphadenopathy":
      //       0,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.isWhiteSpotsInMouth":
      //       2,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.whiteSpotsInMouth":
      //       "sample",
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.needleTrackOrSignOfIVDrugs":
      //       0,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.isColouredSpotsOrLesions":
      //       0,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.isEvidenceOfBloodLoss":
      //       0,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.isSkinLesions":
      //       0,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.isEvidenceOfSmallpoxVaccinationOrScab":
      //       false,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.isMucusMembraneHemorrhages":
      //       true,
      //   "corneaRetrievalRequest.physicalAssessment.properties.physical_assessment.remarks":
      //       null,
      //   "corneaRetrievalRequest.physicalAssessment.outcome.status":
      //       "ACCEPTED",
      //   "corneaRetrievalRequest.physicalAssessment.outcome.remark":
      //       "sample",
      //   "corneaRetrievalRequest.labReport.properties.wbc.isWbcPerformed": 0,
      //   "corneaRetrievalRequest.labReport.properties.wbc.metrics.dateTime":
      //       "2024-08-26T06:30:00.000Z",
      //   "corneaRetrievalRequest.labReport.properties.wbc.metrics.count":
      //       "12",
      //   "corneaRetrievalRequest.labReport.properties.temperature.isRecorded":
      //       0,
      //   "corneaRetrievalRequest.labReport.properties.temperature.notRecordedReason":
      //       "sample",
      //   "corneaRetrievalRequest.labReport.properties.temperature.metrics.dateTime":
      //       "2024-08-26T06:30:00.000Z",
      //   "corneaRetrievalRequest.labReport.properties.temperature.metrics.result":
      //       "sample",
      //   "corneaRetrievalRequest.labReport.properties.temperature.metrics.units":
      //       "12",
      //   "corneaRetrievalRequest.labReport.properties.cultures.isCultures":
      //       0,
      //   "corneaRetrievalRequest.labReport.properties.cultures.metrics.cultureSource":
      //       "sample",
      //   "corneaRetrievalRequest.labReport.properties.cultures.metrics.dateTime":
      //       "2024-08-26T06:30:00.000Z",
      //   "corneaRetrievalRequest.labReport.properties.cultures.metrics.result":
      //       "sample",
      //   "corneaRetrievalRequest.labReport.outcome.status": "ACCEPTED",
      //   "corneaRetrievalRequest.labReport.outcome.remark": "sample",
      //   "corneaRetrievalRequest.sample.collectedOn":
      //       "2024-08-26T06:30:00.000Z",
      //   "corneaRetrievalRequest.sample.wasCollectedPreMortem": "PRE_MORTEM",
      //   "corneaRetrievalRequest.sample.collectedBy": "sample",
      //   "corneaRetrievalRequest.hemodilution.properties.details.donorName":
      //       "sample",
      //   "corneaRetrievalRequest.hemodilution.properties.sample.collectedOn":
      //       "2024-08-26T06:30:00.000Z",
      //   "corneaRetrievalRequest.hemodilution.properties.sample.collectedBy":
      //       "sample",
      //   "corneaRetrievalRequest.hemodilution.properties.details.wasDonorInfusedOrTransfused":
      //       0,
      //   "corneaRetrievalRequest.hemodilution.properties.details.isDonorsAgeGreaterThan12Years":
      //       0,
      //   "corneaRetrievalRequest.hemodilution.properties.details.isBloodLossOccured":
      //       0,
      //   "corneaRetrievalRequest.hemodilution.properties.bloodProducts.bloodProduct":
      //       "12",
      //   "corneaRetrievalRequest.hemodilution.properties.bloodProducts.dateTime":
      //       "2024-08-26T06:30:00.000Z",
      //   "corneaRetrievalRequest.hemodilution.properties.bloodProducts.volume":
      //       "12",
      //   "corneaRetrievalRequest.hemodilution.properties.bloodProducts.totalBloodProductsTranfused":
      //       "12",
      //   "corneaRetrievalRequest.hemodilution.properties.colloid.colloidDesc":
      //       "sample",
      //   "corneaRetrievalRequest.hemodilution.properties.colloid.dateTime":
      //       "2024-08-26T06:30:00.000Z",
      //   "corneaRetrievalRequest.hemodilution.properties.colloid.volume":
      //       "12",
      //   "corneaRetrievalRequest.hemodilution.properties.colloid.totalColloidsTranfused":
      //       "12",
      //   "corneaRetrievalRequest.hemodilution.properties.crystalloid.crystalloidDesc":
      //       "12",
      //   "corneaRetrievalRequest.hemodilution.properties.crystalloid.dateTime":
      //       "2024-08-26T06:30:00.000Z",
      //   "corneaRetrievalRequest.hemodilution.properties.crystalloid.volume":
      //       "12",
      //   "corneaRetrievalRequest.hemodilution.properties.crystalloid.totalCrystalloidsTranfused":
      //       "12",
      //   "corneaRetrievalRequest.hemodilution.properties.crystalloid.ABC":
      //       "12",
      //   "corneaRetrievalRequest.hemodilution.properties.crystalloid.BC":
      //       "12",
      //   "corneaRetrievalRequest.hemodilution.properties.corneaEvaluation.PV":
      //       "12",
      //   "corneaRetrievalRequest.hemodilution.properties.corneaEvaluation.BV":
      //       "12",
      //   "corneaRetrievalRequest.hemodilution.properties.isBCGreaterPV": 0,
      //   "corneaRetrievalRequest.hemodilution.properties.isABCGreaterPV": 0,
      //   "corneaRetrievalRequest.hemodilution.properties.isAcecepted": 0,
      //   "corneaRetrievalRequest.hemodilution.properties.rejected.initial":
      //       "12",
      //   "corneaRetrievalRequest.hemodilution.properties.rejected.date":
      //       "2024-08-26T06:30:00.000Z",
      //   "corneaRetrievalRequest.hemodilution.performedOn":
      //       "2024-08-26T06:30:00.000Z",
      //   "corneaRetrievalRequest.hemodilution.outcome.status": "ACCEPTED",
      //   "corneaRetrievalRequest.hemodilution.outcome.remark": "12",
      //   "corneaRetrievalRequest.hemodilution.documents.documentDetails.url":
      //       null
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
