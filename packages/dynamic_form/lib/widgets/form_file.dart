import 'dart:io';
import 'dart:math' as math;

import 'package:dotted_border/dotted_border.dart';
import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/utlities/file_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FormFile extends HookWidget {
  const FormFile({
    super.key,
    required this.onChanged,
    required this.field,
  });

  final ElementElementClassEntity field;
  final Function(List<PlatformFile>) onChanged;

  @override
  Widget build(BuildContext context) {
    final images = useState<List<PlatformFile>>([]);
    final showAllImages = useState<bool>(false);

    return FormField<List<PlatformFile>>(
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
            ImagePickerContainer(
              state: state,
              field: field,
              images: images,
              showAllImages: showAllImages,
              onChanged: onChanged,
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

class ImagePickerContainer extends StatelessWidget {
  const ImagePickerContainer({
    super.key,
    required this.state,
    required this.field,
    required this.images,
    required this.showAllImages,
    required this.onChanged,
  });

  final FormFieldState<List<PlatformFile>> state;
  final ElementElementClassEntity field;
  final ValueNotifier<List<PlatformFile>> images;
  final ValueNotifier<bool> showAllImages;
  final Function(List<PlatformFile>) onChanged;

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
            ImageDisplayGrid(
              images: images,
              showAllImages: showAllImages,
              onChanged: onChanged,
              state: state,
            ),
            const SizedBox(height: 16.0),
            if (images.value.isEmpty)
              UploadButton(onChanged: onChanged, images: images, state: state),
          ],
        ),
      ),
    );
  }
}

class ImageDisplayGrid extends StatelessWidget {
  const ImageDisplayGrid({
    super.key,
    required this.images,
    required this.showAllImages,
    required this.onChanged,
    required this.state,
  });

  final ValueNotifier<List<PlatformFile>> images;
  final ValueNotifier<bool> showAllImages;
  final Function(List<PlatformFile>) onChanged;
  final FormFieldState<List<PlatformFile>> state;

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
                      file: image,
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
        if (images.value.isNotEmpty)
          ImageAddButton(onChanged: onChanged, images: images, state: state),
      ],
    );
  }
}

class ImageAddButton extends StatelessWidget {
  const ImageAddButton({
    super.key,
    required this.onChanged,
    required this.images,
    required this.state,
  });

  final Function(List<PlatformFile>) onChanged;
  final ValueNotifier<List<PlatformFile>> images;
  final FormFieldState<List<PlatformFile>> state;

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
              final files = await FilePickerService.pickFiles();
              if (files != null) {
                images.value = List.from(images.value)..addAll(files.files);
                onChanged(images.value);
                state.didChange(images.value);
              } else {
                debugPrint('No images selected.');
              }
            } catch (e) {
              debugPrint('Error picking images: $e');
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

class UploadButton extends StatelessWidget {
  const UploadButton({
    super.key,
    required this.onChanged,
    required this.images,
    required this.state,
  });

  final Function(List<PlatformFile>) onChanged;
  final ValueNotifier<List<PlatformFile>> images;
  final FormFieldState<List<PlatformFile>> state;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: FileUploadButton(
              onPressed: () async {
                try {
                  final files = await FilePickerService.pickFiles();

                  /// upload to server
                  /// then set the data

                  if (files != null) {
                    images.value = List.from(images.value)..addAll(files.files);
                    onChanged(images.value);
                    state.didChange(images.value);
                  } else {
                    debugPrint('No images selected.');
                  }
                } catch (e) {
                  debugPrint('Error picking images: $e');
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ImageDisplay extends StatelessWidget {
  final PlatformFile? file;
  final double? borderRadius;
  final double? height;
  final double? width;

  const ImageDisplay({
    super.key,
    this.file,
    this.borderRadius,
    this.height,
    this.width,
  });

  bool _isImageFile(String? extension) {
    final imageExtensions = ['jpg', 'jpeg', 'png'];
    return imageExtensions.contains(extension?.toLowerCase());
  }

  @override
  Widget build(BuildContext context) {
    if (file == null) {
      return const SizedBox();
    }

    final fileExtension = file!.extension;

    if (kIsWeb) {
      if (!_isImageFile(fileExtension)) {
        return SizedBox(
          height: height ?? 300,
          width: width ?? 300,
          child: const Center(
            child: Icon(
              Icons.insert_drive_file,
              size: 72,
            ),
          ),
        );
      }

      return FutureBuilder<Uint8List?>(
        future: file!.bytes != null
            ? Future.value(file!.bytes)
            : file!.readStream?.first as Future<Uint8List?>?,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SizedBox(
              height: height ?? 300,
              width: width ?? 300,
              child: const Center(child: CircularProgressIndicator()),
            );
          } else if (snapshot.hasError) {
            return const Text('Error loading image');
          } else if (snapshot.hasData) {
            final uint8List = snapshot.data!;
            return ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
              child: Image.memory(
                uint8List,
                height: height ?? 300,
                width: width ?? 300,
                fit: BoxFit.cover,
              ),
            );
          } else {
            return const Text('Error loading image');
          }
        },
      );
    } else {
      if (!_isImageFile(fileExtension)) {
        return SizedBox(
          height: height ?? 300,
          width: width ?? 300,
          child: const Center(
            child: Icon(
              Icons.insert_drive_file,
              size: 72,
            ),
          ),
        );
      }

      return ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius ?? 8),
        child: Image.file(
          File(file!.path!),
          height: height ?? 300,
          width: width ?? 300,
          fit: BoxFit.cover,
        ),
      );
    }
  }
}

class FileUploadButton extends StatelessWidget {
  final VoidCallback onPressed;
  const FileUploadButton({
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
            'Supported files: JPG, JPEG, PNG, PDF',
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
