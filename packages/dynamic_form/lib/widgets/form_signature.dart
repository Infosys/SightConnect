import 'dart:math';
import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/utlities/cloud_service.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
// ignore: depend_on_referenced_packages
import 'package:signature/signature.dart';

enum SignatureMode { preview, edit }

class SignatureFormField extends HookWidget {
  final GlobalKey<FormBuilderState> formKey;
  final ElementClassEntity field;
  final Function(String?) onChanged;

  const SignatureFormField({
    super.key,
    required this.formKey,
    required this.field,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final mode = useState(field.initialValue != null
        ? SignatureMode.preview
        : SignatureMode.edit);

    useEffect(() {
      onChanged(field.initialValue);
      return;
    }, []);

    return Column(
      children: [
        if (field.initialValue != null)
          SignImageDisplay(
            title: field.title,
            imageUrl: field.initialValue,
          ),
        if (field.initialValue == null)
          SigningWidget(
            formKey: formKey,
            field: field,
            onSaved: (signaturePng) async {
              final url = await uploadFile(signaturePng, true);
              mode.value = SignatureMode.preview;
              return url;
            },
            mode: mode,
          ),
      ],
    );
  }

  Future<String> uploadFile(PlatformFile file, bool useBytes) async {
    return CloudService().uploadImage(file, useBytes);
  }
}

class SigningWidget extends HookWidget {
  final GlobalKey<FormBuilderState> formKey;
  final ElementClassEntity field;
  final Future<String> Function(PlatformFile)? onSaved;
  final ValueNotifier<SignatureMode> mode;

  const SigningWidget({
    super.key,
    required this.formKey,
    required this.field,
    this.onSaved,
    required this.mode,
  });

  @override
  Widget build(BuildContext context) {
    final SignatureController controller = SignatureController(
      disabled: field.readOnly ? true : false,
      penStrokeWidth: 5,
      penColor: Colors.black,
      exportBackgroundColor: Colors.white,
    );
    final signPng = useState<Uint8List?>(null);

    return FormBuilderField(
      name: field.name,
      builder: (state) {
        return DottedBorder(
          padding: const EdgeInsets.all(16),
          borderType: BorderType.RRect,
          radius: const Radius.circular(16),
          color: Colors.grey.shade300,
          child: Stack(
            children: [
              if (mode.value == SignatureMode.preview)
                SignImageDisplay(
                  title: field.title,
                  imageBytes: signPng.value,
                  enableBorder: false,
                ),
              if (mode.value == SignatureMode.edit)
                Signature(
                  controller: controller,
                  backgroundColor: Colors.transparent,
                  height: 170,
                  width: double.infinity,
                ),
              Positioned(
                bottom: 4,
                left: 10,
                child: TextButton(
                  onPressed: () {
                    if (mode.value == SignatureMode.edit) {
                      controller.clear();
                    } else {
                      mode.value = SignatureMode.edit;
                    }
                  },
                  child: const Text('Cancel'),
                ),
              ),
              if (mode.value == SignatureMode.edit)
                Positioned(
                  bottom: 4,
                  right: 10,
                  child: TextButton(
                    onPressed: () async {
                      final signature = await controller.toPngBytes();
                      if (signature != null) {
                        final file = PlatformFile(
                          name: generateRandomFileName(),
                          size: signature.length,
                          bytes: signature,
                        );
                        signPng.value = signature;
                        try {
                          final url = await onSaved?.call(file);
                          Log.d(url);
                          state.didChange(url);
                        } catch (e) {
                          Log.e(e);
                        }
                      } else {
                        Log.e('Signature is empty');
                        state.didChange(null);
                      }
                    },
                    child: const Text('Save'),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  String generateRandomFileName() {
    const String chars =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final Random random = Random.secure();
    final String randomString =
        List.generate(8, (index) => chars[random.nextInt(chars.length)]).join();
    return '$randomString.png';
  }
}

class SignImageDisplay extends StatelessWidget {
  const SignImageDisplay({
    super.key,
    required this.title,
    this.imageUrl,
    this.imageBytes,
    this.enableBorder = true,
  });
  final String title;
  final String? imageUrl;
  final Uint8List? imageBytes;
  final bool enableBorder;

  @override
  Widget build(BuildContext context) {
    final content = Container(
      constraints: const BoxConstraints(
        maxHeight: 150,
        maxWidth: 200,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (imageBytes != null)
            Expanded(
              child: Image.memory(
                imageBytes!,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.error);
                },
              ),
            ),
          if (imageUrl != null) Expanded(child: Image.network(imageUrl!)),
        ],
      ),
    );

    if (enableBorder) {
      return DottedBorder(
        padding: const EdgeInsets.all(16),
        borderType: BorderType.RRect,
        radius: const Radius.circular(16),
        color: Colors.grey.shade300,
        child: content,
      );
    } else {
      return content;
    }
  }
}
