// import 'dart:developer';
// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_cache_manager/flutter_cache_manager.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';
// import 'package:path_provider/path_provider.dart';

// enum FileType { pdf, jpg, png, jpeg, html, unknown }

// class Response {
//   final String data;
//   final String url;

//   Response({required this.data, required this.url});
//   @override
//   String toString() {
//     return 'Response(data: $data, url: $url)';
//   }
// }

// Future<Response> downloadFile(String url) async {
//   final fileInfo = await DefaultCacheManager().downloadFile(url);
//   log('File size: ${fileInfo.file.lengthSync()}');
//   final response = await Dio().get(url);
//   log('Response size: ${response.data.toString()}');
//   return Response(data: response.data.toString(), url: url);
// //   final dio = Dio(
// //     BaseOptions(baseUrl: "https://www.irs.gov"),
// //   );
// // //  options: Options(responseType: ResponseType.bytes)
// //   final image = await dio.get(
// //     url,
// //   );
// //   final appDir = await getTemporaryDirectory();
// //   final fileName = url.split('/').last;
// //   final filePath = '${appDir.path}/$fileName';
// //   final file = File(filePath);
// //   await file.writeAsBytes();
// }

// Future<void> showGenericMediaPreview(BuildContext context, String url,
//     {bool isDialog = false}) async {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return StatefulBuilder(
//         builder: (BuildContext context, StateSetter setState) {
//           return FutureBuilder<Map<String, dynamic>>(
//             future: downloadFile(url),
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return const AlertDialog(
//                   content: Center(child: CircularProgressIndicator()),
//                 );
//               } else if (snapshot.hasError) {
//                 return AlertDialog(
//                   content: Text('Error: ${snapshot.error}'),
//                   actions: [
//                     TextButton(
//                       onPressed: () => Navigator.of(context).pop(),
//                       child: const Text('Close'),
//                     ),
//                   ],
//                 );
//               } else if (snapshot.hasData) {
//                 final file = snapshot.data?["file"]!;
//                 final fileType = _getFileType(file.file.path);
//                 return _buildPreviewContent(context, fileType, file.file.path, data?["response"]!);
//               } else {
//                 return AlertDialog(
//                   content: const Text('No data available'),
//                   actions: [
//                     TextButton(
//                       onPressed: Navigator.of(context).pop,
//                       child: const Text('Close'),
//                     ),
//                   ],
//                 );
//               }
//             },
//           );
//         },
//       );
//     },
//   );
// }

// Widget _buildPreviewContent(
//     BuildContext context, FileType fileType, String filePath) {
//   Widget content;
//   switch (fileType) {
//     case FileType.pdf:
//       content = SizedBox(
//         height: MediaQuery.of(context).size.height * 0.7,
//         child: PDFView(
//           filePath: filePath,
//           enableSwipe: true,
//           swipeHorizontal: true,
//           autoSpacing: false,
//           pageFling: false,
//         ),
//       );
//     case FileType.jpg:
//       content = Image.file(File(filePath));
//     case FileType.png:
//       content = Image.file(File(filePath));
//     case FileType.jpeg:
//       content = Image.file(File(filePath));
//     case FileType.html:
//       content = const Center(
//           child: Text('HTML content cannot be displayed directly'));
//     case FileType.unknown:
//       content = const Center(child: Text('Unsupported file type'));
//   }

//   return AlertDialog(
//     content: SingleChildScrollView(
//       child: content,
//     ),
//     actions: [
//       TextButton(
//         onPressed: () => Navigator.of(context).pop(),
//         child: const Text('Close'),
//       ),

// //save the image to device

//       TextButton(
//         onPressed: () async {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text('File saved to ${finalFile.path}'),
//             ),
//           );
//         },
//         child: const Text('Save'),
//       ),
//     ],
//   );
// }

// FileType _getFileType(String path) {
//   String extension = path.split('.').last.toLowerCase();
//   switch (extension) {
//     case 'pdf':
//       return FileType.pdf;
//     case 'jpg':
//       return FileType.jpg;
//     case 'jpeg':
//       return FileType.jpeg;
//     case 'png':
//       return FileType.png;
//     case 'html':
//       return FileType.html;
//     default:
//       return FileType.unknown;
//   }
// }
