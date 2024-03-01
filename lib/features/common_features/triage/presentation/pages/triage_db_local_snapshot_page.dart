import 'dart:convert';

import 'package:eye_care_for_all/core/services/background_service.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/local/triage_db_helper.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Delete This File Fake Data Local DB Snapshot Page

class LocalDBCurrentState extends ConsumerWidget {
  const LocalDBCurrentState({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(localDBCurrentStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local DB Current State'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              ref.read(localDBCurrentStateProvider).helper();
            },
          ),
          IconButton(
            icon: Icon(Icons.upload),
            onPressed: () async {
              await ref.read(localDBCurrentStateProvider).postPendingTriage();
              ref.read(localDBCurrentStateProvider).helper();
            },
          ),
          IconButton(
            icon: Icon(Icons.cloud_upload_outlined),
            onPressed: () async {
              await BackgroundServices.dispatchTriageResult();
              ref.read(localDBCurrentStateProvider).helper();
            },
          ),
        ],
      ),
      body: !data.isDataLoaded
          ? CircularProgressIndicator.adaptive()
          : SingleChildScrollView(
              child: Column(
                children: [
                  ExpansionTile(
                    title: Text('Triage ${data.triageData!.length}'),
                    children: data.triageData!
                        .map((e) => ListTile(title: Text(e)))
                        .toList(),
                  ),
                  ExpansionTile(
                    title: Text(
                        'Triage Response ${data.triageResponseData!.length}'),
                    children: data.triageResponseData!
                        .map((e) => ListTile(title: Text(e)))
                        .toList(),
                  ),
                  ExpansionTile(
                    title:
                        Text('Questionaire ${data.quessionaireData!.length}'),
                    children: data.quessionaireData!
                        .map((e) => ListTile(title: Text(e)))
                        .toList(),
                  ),
                  ExpansionTile(
                    title:
                        Text('Visual Acuity ${data.visualAcuityData!.length}'),
                    children: data.visualAcuityData!
                        .map((e) => ListTile(title: Text(e)))
                        .toList(),
                  ),
                  ExpansionTile(
                    title: Text('Eye Scan ${data.eyeScanData!.length}'),
                    children: data.eyeScanData!
                        .map((e) => ListTile(title: Text(e)))
                        .toList(),
                  ),
                ],
              ),
            ),
    );
  }
}

class LocalDBCurrentStateProvider extends ChangeNotifier {
  final TriageDBHelper triageLocalSource;
  final TriageRepository triageRepository;
  LocalDBCurrentStateProvider(this.triageLocalSource, this.triageRepository) {
    helper();
  }

  helper() async {
    await getQuestionaireResponse();
    await getVisualAcuityResponse();
    await getEyeScanResponse();
    await getTriageResponse();
    await getTriageResponseData();
    isDataLoaded = true;
    notifyListeners();
  }

  List<String>? quessionaireData;
  List<String>? visualAcuityData;
  List<String>? eyeScanData;
  List<String>? triageData;
  List<String>? triageResponseData;
  bool isDataLoaded = false;

  Future<void> getQuestionaireResponse() async {
    quessionaireData = await triageLocalSource.getQuessionaireTableData();

    logger.d({
      "getQuestionaireResponseData": "Getting Questionaire Locally",
      "response": quessionaireData,
    });
    notifyListeners();
  }

  Future<void> getVisualAcuityResponse() async {
    visualAcuityData = await triageLocalSource.getVisualAcuityTableData();

    logger.d({
      "getVisualAcuityResponseData": "Getting Visual Acuity Locally",
      "response": visualAcuityData,
    });
    notifyListeners();
  }

  Future<void> getEyeScanResponse() async {
    eyeScanData = await triageLocalSource.getEyeScanTableData();
    logger.d({
      "getEyeScanResponseData": "Getting Eye Scan Locally",
      "response": eyeScanData,
    });
    notifyListeners();
  }

  Future<void> getTriageResponse() async {
    triageData = await triageLocalSource.getTriageAssessmentTableData();
    logger.d({
      "getTriageResponseData": "Getting Triage Locally",
      "response": triageData,
    });
    notifyListeners();
  }

  Future<void> getTriageResponseData() async {
    triageResponseData = await triageLocalSource.getTriageResponseTableData();
    logger.d({
      "getTriageResponseData": "Getting Triage Response Locally",
      "response": triageResponseData,
    });
    notifyListeners();
  }

  Future<void> postPendingTriage() async {
    List<Map<String, Object?>> pendingTriage =
        await triageLocalSource.getTriageAssessmentResponse();

    for (Map<String, Object?> element in pendingTriage) {
      {
        try {
          await triageRepository.saveTriageResponse(
            triageResponse: TriagePostModel.fromJson(
                json.decode(element['response_json'] as String)
                    as Map<String, dynamic>),
            patientID: '',
          );
        } catch (e) {
          logger.e(e);
        }
      }
    }
  }
}

var localDBCurrentStateProvider = ChangeNotifierProvider.autoDispose(
  (ref) => LocalDBCurrentStateProvider(
    ref.watch(triageDBHelperProvider),
    ref.watch(triageRepositoryProvider),
  ),
);
