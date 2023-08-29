// import 'dart:developer';

// import 'package:bom_superapp/presentation/vision_guardian/vision_guardian_views/eye_scan/eye_scan_provider.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'dart:io';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:path_provider/path_provider.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:printing/printing.dart';
// import 'package:provider/provider.dart';

// class ReportPdf extends StatelessWidget {
//   const ReportPdf({super.key});

//   static String routeName = '/reportPdf';

//   Future<Uint8List> report() async {
//     String reportPath = "assets/keratoconus_report.pdf"; //path to asset
//     ByteData bytes = await rootBundle.load(reportPath); //load sound from assets
//     return bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
//   }

//   void _showPrintedToast(BuildContext context) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(
//         content: Text('Document printed successfully'),
//       ),
//     );
//   }

//   void _showSharedToast(BuildContext context) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(
//         content: Text('Document shared successfully'),
//       ),
//     );
//   }

//   Future<void> _saveAsFile(
//     BuildContext context,
//     LayoutCallback build,
//     PdfPageFormat pageFormat,
//   ) async {
//     final output = await getExternalStorageDirectory();
//     final file = File('${output!.path}/keratoconus_report.pdf');
//     await file.writeAsBytes(await report());

//     //
//     // final bytes = await build(pageFormat);
//     //
//     // final appDocDir = await getApplicationDocumentsDirectory();
//     // final appDocPath = appDocDir.path;
//     // final file = File('$appDocPath/document.pdf');
//     // print('Save as file ${file.path} ...');
//     // await file.writeAsBytes(bytes);
//     // await OpenFile.open(file.path);
//   }

//   @override
//   Widget build(BuildContext context) {
//     pw.RichText.debug = true;

//     final actions = <PdfPreviewAction>[
//       if (!kIsWeb)
//         PdfPreviewAction(
//           icon: const Icon(Icons.save),
//           onPressed: _saveAsFile,
//         )
//     ];

//     return Scaffold(
//         appBar: AppBar(title: const Text("Report")),
//         body: context.watch<EyeScanProvider>().isLoading
//             ? const Center(
//                 child: CircularProgressIndicator(),
//               )
//             : PdfPreview(
//                 maxPageWidth: 700,
//                 build: (format) {
//                   return report();
//                   // if (context.watch<EyeScanProvider>().reportPdf == null) {
//                   //   context.read<EyeScanProvider>().report();
//                   // }
//                   // log(context.read<EyeScanProvider>().reportPdf.toString());
//                   // return context.read<EyeScanProvider>().reportPdf!;
//                 },
//                 actions: actions,
//                 onPrinted: _showPrintedToast,
//                 onShared: _showSharedToast,
//               ));
//   }
// }
