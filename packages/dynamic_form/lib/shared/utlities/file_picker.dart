import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';

class FilePickerService {
  FilePickerService._();

  static List<String> imageExtensions = [
    'jpg',
    'jpeg',
    'png',
    'gif',
    'bmp',
    'webp',
    'pdf'
  ];

  static Future<FilePickerResult?> pickFiles() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.any,
        // allowedExtensions: imageExtensions,
        allowMultiple: true,
      );
      return result;
    } catch (e) {
      debugPrint('Error picking files: $e');
      return null;
    }
  }
}
