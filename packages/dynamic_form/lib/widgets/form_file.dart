import 'dart:math' as math;

import 'package:dotted_border/dotted_border.dart';
import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/utlities/cloud_service.dart';
import 'package:dynamic_form/shared/utlities/file_picker.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FormFile extends HookWidget {
  const FormFile({
    super.key,
    required this.onChanged,
    required this.field,
  });

  final ElementClassEntity field;
  final Function(List<String>) onChanged;

  List<String> getInitialValue() {
    try {
      if (field.initialValue is String) {
        return [field.initialValue as String];
      } else if (field.initialValue is Iterable) {
        return List<String>.from(field.initialValue);
      } else {
        return [];
      }
    } catch (e) {
      Log.e('FormFile: $e');
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    final images = useState<List<String>>(getInitialValue());
    final showAllImages = useState<bool>(false);
    final isLoading = useState<bool>(false);

    useEffect(() {
      // Update the form state with the initial value
      onChanged(images.value);
      return;
    }, []);

    return FormField<List<String>>(
      initialValue: images.value,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        value = value ?? [];
        if (field.isRequired && value.isEmpty) {
          return 'Please choose at least one image';
        }
        return null;
      },
      builder: (state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImagePicker(
              state: state,
              field: field,
              images: images,
              showAllImages: showAllImages,
              onChanged: onChanged,
              isLoading: isLoading,
            ),
            const SizedBox(height: 8),
            Text(
              state.errorText ?? '',
              style: const TextStyle(
                color: Colors.red,
                fontSize: 12.0,
              ),
            ),
          ],
        );
      },
    );
  }
}

class ImagePicker extends StatelessWidget {
  const ImagePicker({
    super.key,
    required this.state,
    required this.field,
    required this.images,
    required this.showAllImages,
    required this.onChanged,
    required this.isLoading,
  });

  final FormFieldState<List<String>> state;
  final ElementClassEntity field;
  final ValueNotifier<List<String>> images;
  final ValueNotifier<bool> showAllImages;
  final Function(List<String>) onChanged;
  final ValueNotifier<bool> isLoading;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(16),
      color: state.errorText != null ? Colors.red : Colors.grey.shade300,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(field.title, textAlign: TextAlign.center),
            const SizedBox(height: 16.0),
            if (isLoading.value)
              const Center(
                child: Column(
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 8),
                    Text('Uploading...'),
                  ],
                ),
              )
            else
              ImageGrid(
                images: images,
                showAllImages: showAllImages,
                onChanged: onChanged,
                state: state,
                isLoading: isLoading,
              ),
            const SizedBox(height: 16.0),
            if (images.value.isEmpty)
              InitialUploadButton(
                onChanged: onChanged,
                images: images,
                state: state,
                isLoading: isLoading,
              ),
          ],
        ),
      ),
    );
  }
}

class ImageDisplay extends StatelessWidget {
  final String? url;
  final double? borderRadius;
  final double? height;
  final double? width;

  const ImageDisplay({
    super.key,
    this.url,
    this.borderRadius,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    if (url == null && url!.isEmpty) {
      return const SizedBox();
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 8),
      child: Image.network(
        url!,
        height: height ?? 300,
        width: width ?? 300,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return const Icon(Icons.error);
        },
      ),
    );
  }
}

class UploadFileButton extends StatelessWidget {
  final VoidCallback onPressed;
  const UploadFileButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Icon(
            Icons.cloud_upload_sharp,
            color: Colors.grey.shade400,
            size: 72,
          ),
          const SizedBox(height: 4),
          Text(
            'Choose your file here',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Supported files: PNG, JPEG, JPG, PDF, DOCX, DOC',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 8),
          Text(
            'Max size: 5MB',
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}

class ImageGrid extends StatelessWidget {
  const ImageGrid({
    super.key,
    required this.images,
    required this.showAllImages,
    required this.onChanged,
    required this.state,
    required this.isLoading,
  });

  final ValueNotifier<bool> isLoading;
  final ValueNotifier<List<String>> images;
  final ValueNotifier<bool> showAllImages;
  final Function(List<String>) onChanged;
  final FormFieldState<List<String>> state;

  @override
  Widget build(BuildContext context) {
    return Wrap(
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
                      url: image,
                      borderRadius: 8.0,
                      height: 100,
                      width: 100,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.remove_circle,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        images.value = List.from(images.value)..remove(image);
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
        // if (images.value.isNotEmpty)
        //   AddImageButton(
        //     onChanged: onChanged,
        //     images: images,
        //     state: state,
        //     isLoading: isLoading,
        //   ),
      ],
    );
  }
}

class AddImageButton extends StatelessWidget {
  const AddImageButton({
    super.key,
    required this.onChanged,
    required this.images,
    required this.state,
    required this.isLoading,
  });

  final Function(List<String>) onChanged;
  final ValueNotifier<List<String>> images;
  final FormFieldState<List<String>> state;
  final ValueNotifier<bool> isLoading;

  Future<String> uploadFile(PlatformFile file) async {
    return CloudService().uploadImage(file);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: InkWell(
          onTap: () async {
            try {
              isLoading.value = true;
              final files = await FilePickerService.pickFiles();
              if (files != null) {
                for (var file in files.files) {
                  final url = await uploadFile(file);
                  images.value = List.from(images.value)..add(url);
                }
                onChanged(images.value);
                state.didChange(images.value);
              } else {
                debugPrint('No images selected.');
              }
            } catch (e) {
              debugPrint('Error picking images: $e');
            } finally {
              isLoading.value = false;
            }
          },
          child: const Icon(
            Icons.add,
            size: 42,
          ),
        ),
      ),
    );
  }
}

class InitialUploadButton extends StatelessWidget {
  const InitialUploadButton({
    super.key,
    required this.onChanged,
    required this.images,
    required this.state,
    required this.isLoading,
  });

  final Function(List<String>) onChanged;
  final ValueNotifier<List<String>> images;
  final FormFieldState<List<String>> state;
  final ValueNotifier<bool> isLoading;

  Future<String> uploadFile(PlatformFile file) async {
    return CloudService().uploadImage(file);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: UploadFileButton(
            onPressed: () async {
              try {
                isLoading.value = true;
                final files = await FilePickerService.pickFiles();

                if (files != null) {
                  for (var file in files.files) {
                    final url = await uploadFile(file);
                    images.value = List.from(images.value)..add(url);
                  }
                  onChanged(images.value);
                  state.didChange(images.value);
                } else {
                  debugPrint('No images selected.');
                }
              } catch (e) {
                debugPrint('Error picking images: $e');
              } finally {
                isLoading.value = false;
              }
            },
          ),
        ),
      ],
    );
  }
}
