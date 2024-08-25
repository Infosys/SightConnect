import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';

class FilePickerService {
  FilePickerService._();

  static const List<String> allowedExtensions = [
    'png',
    'jpeg',
    'jpg',
    'pdf',
    'docx',
    'doc'
  ];

  static Future<FilePickerResult?> pickFiles({
    bool allowMultiple = false,
    bool withData = kIsWeb,
    bool withReadStream = false,
  }) async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowMultiple: allowMultiple,
        allowedExtensions: allowedExtensions,
        withData: withData,
        withReadStream: withReadStream,
      );

      if (result != null) {
        for (var file in result.files) {
          if (!_isFileExtensionValid(file.extension)) {
            debugPrint('File ${file.name} has an unsupported file type.');
            return null;
          }
          if (!_isFileSizeValid(file.size)) {
            debugPrint(
                'File ${file.name} exceeds the maximum allowed size of 5 MB.');
            return null;
          }
        }
      }

      return result;
    } catch (e) {
      debugPrint('Error picking files: $e');
      return null;
    }
  }

  static bool _isFileExtensionValid(String? extension) {
    if (extension == null) return false;
    return allowedExtensions.contains(extension.toLowerCase());
  }

  static bool _isFileSizeValid(int fileSize) {
    const int maxSizeInBytes = 5 * 1024 * 1024; // 5 MB in bytes
    return fileSize <= maxSizeInBytes;
  }
}
