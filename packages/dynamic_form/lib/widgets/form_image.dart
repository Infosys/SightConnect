import 'dart:convert';
import 'dart:io';

import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/services/image_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';

class FormImage extends HookWidget {
  const FormImage({
    super.key,
    required this.onChanged,
    required this.field,
  });
  final FieldEntity field;
  final Function(XFile) onChanged;

  @override
  Widget build(BuildContext context) {
    final image = useState<XFile?>(null);
    return FormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (_) {
        if (image.value == null) {
          return 'Please choose an image';
        }
        return null;
      },
      builder: (field) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: field.errorText != null
                ? Border.all(color: Colors.red)
                : Border.all(color: Colors.grey),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Text(
                  'Image',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              ImageDisplay(
                image: image.value,
                borderRadius: 8.0,
                height: 300,
                width: 300,
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () async {
                  try {
                    final img = await ImagePickerService.pickImage();
                    if (img != null) {
                      image.value = img;
                      onChanged(img);
                    } else {
                      debugPrint('No image selected.');
                    }
                  } catch (e) {
                    debugPrint('Error picking image: $e');
                  }
                },
                child: const Text('Choose Image'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ImageDisplay extends StatelessWidget {
  final XFile? image;
  final double? borderRadius;
  final double? height;
  final double? width;

  const ImageDisplay({
    super.key,
    this.image,
    this.borderRadius,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    if (image == null) {
      return const SizedBox();
    }
    if (kIsWeb) {
      return FutureBuilder<Uint8List>(
        future: image!.readAsBytes(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final imageBytes = snapshot.data!;
            final baseEncoded = base64Encode(imageBytes);
            final dataUri =
                'data:image/png;base64,$baseEncoded'; // Adjust MIME type if needed
            return ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
              child: Image.network(
                dataUri,
                height: height ?? 300,
                width: width ?? 300,
                fit: BoxFit.cover,
              ),
            );
          } else if (snapshot.hasError) {
            return const Text('Error loading image');
          }
          return SizedBox(
            height: height ?? 300,
            width: width ?? 300,
            child: const Center(child: CircularProgressIndicator()),
          );
        },
      );
    } else {
      return ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius ?? 8),
        child: Image.file(
          File(image!.path),
          height: height ?? 300,
          width: width ?? 300,
          fit: BoxFit.cover,
        ),
      );
    }
  }
}
