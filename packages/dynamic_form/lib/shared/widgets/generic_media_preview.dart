import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;

class GenericMediaViewer extends HookWidget {
  final String url;
  final bool isDialog;

  const GenericMediaViewer({
    super.key,
    required this.url,
    required this.isDialog,
  });

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(true);
    final error = useState<String?>(null);
    final filePath = useState<String?>(null);
    final fileType = useState<FileType>(FileType.unknown);
    Future<void> downloadAndDetermineFileType() async {
      try {
        final response = await http.get(Uri.parse(url));
        if (response.statusCode == 200) {
          final bytes = response.bodyBytes;
          final tempDir = await getTemporaryDirectory();
          final file = File(path.join(tempDir.path, path.basename(url)));
          await file.writeAsBytes(bytes);
          filePath.value = file.path;

          if (file.path.toLowerCase().endsWith('.pdf')) {
            fileType.value = FileType.pdf;
          } else if (file.path.toLowerCase().endsWith('.svg')) {
            fileType.value = FileType.svg;
          } else {
            fileType.value = FileType.image;
          }
        } else {
          error.value = 'Failed to download file';
        }
      } catch (e) {
        error.value = 'Error: $e';
      } finally {
        isLoading.value = false;
      }
    }

    useEffect(() {
      downloadAndDetermineFileType();
      return null;
    }, []);

    Widget buildContent() {
      if (isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      }

      if (error.value != null) {
        return Center(child: Text(error.value!));
      }

      switch (fileType.value) {
        case FileType.pdf:
          return PDFView(
            filePath: filePath.value!,
            enableSwipe: true,
            swipeHorizontal: true,
            autoSpacing: false,
            pageFling: false,
          );
        case FileType.svg:
          return  .file(File(filePath.value!));
        case FileType.image:
          return Image.file(File(filePath.value!));
        case FileType.unknown:
          return const Center(child: Text('Unsupported file type'));
      }
    }

    final content = buildContent();

    if (isDialog) {
      return AlertDialog(
        content: SizedBox(
          width: double.maxFinite,
          child: content,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      );
    } else {
      return Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(child: content),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
          ],
        ),
      );
    }
  }
}

enum FileType { pdf, svg, image, unknown }

// Usage example:
void showMediaViewer(BuildContext context, String url, bool isDialog) {
  if (isDialog) {
    showDialog(
      context: context,
      builder: (context) => GenericMediaViewer(url: url, isDialog: true),
    );
  } else {
    showModalBottomSheet(
      context: context,
      builder: (context) => GenericMediaViewer(url: url, isDialog: false),
    );
  }
}
