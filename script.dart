import 'dart:io';

import 'package:ansicolor/ansicolor.dart';

void main() {
  final projectDir = Directory.current;
  final assetDir = Directory('${projectDir.path}/asset');
  final libDir = Directory('${projectDir.path}/lib');

  print('Scanning project directory: ${projectDir.path}');
  scanDirectory(projectDir, checkComments: false);

  print('Scanning asset directory: ${assetDir.path}');
  scanDirectory(assetDir, checkComments: false);

  print('Scanning lib directory: ${libDir.path}');
  scanDirectory(libDir, checkComments: true);
}

void scanDirectory(Directory dir, {required bool checkComments}) {
  if (!dir.existsSync()) {
    print('Directory ${dir.path} does not exist.');
    return;
  }

  dir.listSync(recursive: true).forEach((entity) {
    if (entity is File) {
      if (checkComments && entity.path.endsWith('.dart')) {
        scanDartFileForComments(entity);
      } else if (entity.path.endsWith('.json')) {
        printJsonFile(entity);
      }
    }
  });
}

void scanDartFileForComments(File file) {
  final lines = file.readAsLinesSync();
  final commentPen = AnsiPen()..yellow();
  final filePen = AnsiPen()..blue();

  for (var line in lines) {
    if (line.trim().startsWith('//') ||
        line.trim().startsWith('/*') ||
        line.trim().startsWith('*')) {
      print(filePen('Found comment in ${file.path}:'));
      print(commentPen(line));
    }
  }
}

void printJsonFile(File file) {
  final jsonPen = AnsiPen()..green();
  print(jsonPen('Found JSON file: ${file.path}'));
}
