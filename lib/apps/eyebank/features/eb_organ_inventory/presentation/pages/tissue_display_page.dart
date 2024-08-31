import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Tissue {
  final int? id;
  final String? identifier;
  final String? productCategory;
  final String? productCode;
  final String? productStatus;
  final DateTime? expiryDate;
  final String? lotNumber;
  final String? storageMedium;
  final Map<String, dynamic>? properties;
  final String? storageTemp;
  final String? document;
  final RecoveryInformation? recoveryInformation;
  final int? encounterId;

  Tissue({
    this.id,
    this.identifier,
    this.productCategory,
    this.productCode,
    this.productStatus,
    this.expiryDate,
    this.lotNumber,
    this.storageMedium,
    this.properties,
    this.storageTemp,
    this.document,
    this.recoveryInformation,
    this.encounterId,
  });

  factory Tissue.fromJson(Map<String, dynamic> json) {
    return Tissue(
      id: json['id'],
      identifier: json['identifier'],
      productCategory: json['productCategory'],
      productCode: json['productCode'],
      productStatus: json['productStatus'],
      expiryDate: json['expiryDate'] != null
          ? DateTime.tryParse(json['expiryDate'])
          : null,
      lotNumber: json['lotNumber'],
      storageMedium: json['storageMedium'],
      properties: json['properties'],
      storageTemp: json['storageTemp'],
      document: json['document'],
      recoveryInformation: json['recoveryInformation'] != null
          ? RecoveryInformation.fromJson(json['recoveryInformation'])
          : null,
      encounterId: json['encounterId'],
    );
  }
}

class RecoveryInformation {
  final int? id;
  final String? extractionMethod;
  final DateTime? extractionDateTime;
  final String? lotNumber;
  final String? storageMedium;
  final DateTime? expirationDate;
  final String? intent;
  final String? performedBy;
  final String? performerRole;
  final String? assistedBy;
  final String? assistedRole;
  final Map<String, dynamic>? properties;
  final String? storageTemp;
  final String? documents;
  final String? productCategory;
  final String? productCode;
  final String? productIdentifier;

  RecoveryInformation({
    this.id,
    this.extractionMethod,
    this.extractionDateTime,
    this.lotNumber,
    this.storageMedium,
    this.expirationDate,
    this.intent,
    this.performedBy,
    this.performerRole,
    this.assistedBy,
    this.assistedRole,
    this.properties,
    this.storageTemp,
    this.documents,
    this.productCategory,
    this.productCode,
    this.productIdentifier,
  });

  factory RecoveryInformation.fromJson(Map<String, dynamic> json) {
    return RecoveryInformation(
      id: json['id'],
      extractionMethod: json['extractionMethod'],
      extractionDateTime: json['extractionDateTime'] != null
          ? DateTime.tryParse(json['extractionDateTime'])
          : null,
      lotNumber: json['lotNumber'],
      storageMedium: json['storageMedium'],
      expirationDate: json['expirationDate'] != null
          ? DateTime.tryParse(json['expirationDate'])
          : null,
      intent: json['intent'],
      performedBy: json['performedBy'],
      performerRole: json['performerRole'],
      assistedBy: json['assistedBy'],
      assistedRole: json['assistedRole'],
      properties: json['properties'],
      storageTemp: json['storageTemp'],
      documents: json['documents'],
      productCategory: json['productCategory'],
      productCode: json['productCode'],
      productIdentifier: json['productIdentifier'],
    );
  }
}

Future<List<Tissue>> fetchTissueData() async {
  final dio = Dio();
  final response = await dio.get(
      'https://healthconnect.infosysapps.com/services/eyebank/api/biologically-derived-products');

  return (response.data as List).map((json) => Tissue.fromJson(json)).toList();
}

final tissueProvider = FutureProvider<List<Tissue>>((ref) => fetchTissueData());

class TissueDisplayPage extends ConsumerWidget {
  const TissueDisplayPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tissueAsyncValue = ref.watch(tissueProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tissue Display'),
      ),
      body: tissueAsyncValue.when(
        data: (tissues) {
          return ListView.builder(
            itemCount: tissues.length,
            itemBuilder: (context, index) {
              final tissue = tissues[index];
              return Card(
                child: ListTile(
                  title: Text(tissue.identifier ?? ""),
                  subtitle: Text(tissue.productCategory ?? ""),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(tissue.identifier ?? ""),
                          content: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    'Product Code: ${tissue.productCode ?? ""}'),
                                Text(
                                    'Product Status: ${tissue.productStatus ?? ""}'),
                                Text(
                                    'Expiry Date: ${tissue.expiryDate?.toIso8601String() ?? ""}'),
                                Text('Lot Number: ${tissue.lotNumber ?? ""}'),
                                Text(
                                    'Storage Medium: ${tissue.storageMedium ?? ""}'),
                                Text(
                                    'Properties: ${tissue.properties?.toString() ?? ""}'),
                                Text(
                                    'Storage Temp: ${tissue.storageTemp ?? ""}'),
                                Text('Document: ${tissue.document ?? ""}'),
                                Text(
                                    'Encounter ID: ${tissue.encounterId ?? ""}'),
                                if (tissue.recoveryInformation != null) ...[
                                  const SizedBox(height: 10),
                                  const Text('Recovery Information:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                      'Extraction Method: ${tissue.recoveryInformation?.extractionMethod ?? ""}'),
                                  Text(
                                      'Extraction DateTime: ${tissue.recoveryInformation?.extractionDateTime?.toIso8601String() ?? ""}'),
                                  Text(
                                      'Lot Number: ${tissue.recoveryInformation?.lotNumber ?? ""}'),
                                  Text(
                                      'Storage Medium: ${tissue.recoveryInformation?.storageMedium ?? ""}'),
                                  Text(
                                      'Expiration Date: ${tissue.recoveryInformation?.expirationDate?.toIso8601String() ?? ""}'),
                                  Text(
                                      'Intent: ${tissue.recoveryInformation?.intent ?? ""}'),
                                  Text(
                                      'Performed By: ${tissue.recoveryInformation?.performedBy ?? ""}'),
                                  Text(
                                      'Performer Role: ${tissue.recoveryInformation?.performerRole ?? ""}'),
                                  Text(
                                      'Assisted By: ${tissue.recoveryInformation?.assistedBy ?? ""}'),
                                  Text(
                                      'Assisted Role: ${tissue.recoveryInformation?.assistedRole ?? ""}'),
                                  Text(
                                      'Properties: ${tissue.recoveryInformation?.properties?.toString() ?? ""}'),
                                  Text(
                                      'Storage Temp: ${tissue.recoveryInformation?.storageTemp ?? ""}'),
                                  Text(
                                      'Documents: ${tissue.recoveryInformation?.documents ?? ""}'),
                                  Text(
                                      'Product Category: ${tissue.recoveryInformation?.productCategory ?? ""}'),
                                  Text(
                                      'Product Code: ${tissue.recoveryInformation?.productCode ?? ""}'),
                                  Text(
                                      'Product Identifier: ${tissue.recoveryInformation?.productIdentifier ?? ""}'),
                                ],
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
