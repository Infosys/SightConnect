import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

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
  final Function(List<XFile>) onChanged;

  @override
  Widget build(BuildContext context) {
    final images = useState<List<XFile>>([]);
    final showAllImages = useState<bool>(false);
    return FormField<List<XFile>>(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        value = value ?? [];
        if (field.isRequired && value.isEmpty) {
          return 'Please choose at least one image';
        }
        return null;
      },
      builder: (state) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            border: state.errorText != null
                ? Border.all(color: Colors.red)
                : Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(field.label),
              const SizedBox(height: 16.0),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  ...images.value
                      .sublist(
                          0,
                          showAllImages.value
                              ? images.value.length
                              : math.min(2, images.value.length))
                      .map((image) => Stack(
                            alignment: Alignment.topRight,
                            children: [
                              ImageDisplay(
                                image: image,
                                borderRadius: 8.0,
                                height: 100,
                                width: 100,
                              ),
                              IconButton(
                                icon: const Icon(Icons.remove_circle),
                                onPressed: () {
                                  images.value = List.from(images.value)
                                    ..remove(image);
                                  onChanged(images.value);
                                },
                              ),
                            ],
                          )),
                  if (images.value.length > 2)
                    InkWell(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Center(
                          child: Text(
                            showAllImages.value
                                ? 'Show less'
                                : '${images.value.length - 2} more...',
                            maxLines: 1,
                          ),
                        ),
                      ),
                      onTap: () => showAllImages.value = !showAllImages.value,
                    ),
                ],
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () async {
                  try {
                    final imgs = await ImagePickerService.pickImages();
                    if (imgs.isNotEmpty) {
                      images.value = List.from(images.value)..addAll(imgs);
                      onChanged(images.value);
                      state.didChange(images.value);
                    } else {
                      debugPrint('No images selected.');
                    }
                  } catch (e) {
                    debugPrint('Error picking images: $e');
                  }
                },
                child: const Text('Choose Images'),
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
