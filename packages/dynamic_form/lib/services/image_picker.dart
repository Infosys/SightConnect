import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  ImagePickerService._();

  static Future<XFile?> pickImage({
    ImageSource source = ImageSource.gallery,
  }) async {
    try {
      ImagePicker imagePicker = ImagePicker();
      final pickedFile = await imagePicker.pickImage(source: source);
      return pickedFile;
    } catch (e) {
      debugPrint('Error picking image: $e');
      return null;
    }
  }

  static Future<List<XFile>> pickImages({
    ImageSource source = ImageSource.gallery,
  }) async {
    try {
      ImagePicker imagePicker = ImagePicker();
      final pickedFiles = await imagePicker.pickMultiImage();
      return pickedFiles;
    } catch (e) {
      debugPrint('Error picking images: $e');
      return [];
    }
  }
}
