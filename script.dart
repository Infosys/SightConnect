import 'dart:io';

import 'package:flutter/foundation.dart';

void main() {
  final projectDir = Directory.current;
  final assetsDir = Directory('${projectDir.path}/assets');
  final libDir = Directory('${projectDir.path}/lib');

  final sensitivePatterns = [
    RegExp(r'api[_-]?key', caseSensitive: false),
    RegExp(r'api[_-]?secret', caseSensitive: false),
    RegExp(r'db[_-]?password', caseSensitive: false),
    RegExp(r'password', caseSensitive: false),
    RegExp(r'private[_-]?key', caseSensitive: false),
    RegExp(r'secret', caseSensitive: false),
    RegExp(r'token', caseSensitive: false),
    RegExp(r'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}',
        caseSensitive: false), // Email addresses
    RegExp(r'\b\d{13,19}\b'), // Credit card numbers (basic pattern)
    RegExp(r'\b\d{3}-\d{2}-\d{4}\b'), // Social Security numbers (SSN)
    RegExp(r'client[_-]?id', caseSensitive: false), // Client IDs
    RegExp(r'client[_-]?secret', caseSensitive: false), // Client secrets
    RegExp(r'\b\d{10}\b'), // Basic 10-digit phone numbers
    RegExp(
        r'\b\d{3}[-.\s]?\d{3}[-.\s]?\d{4}\b'), // Phone numbers with separators
    RegExp(
        r'\(\d{3}\)\s?\d{3}[-.\s]?\d{4}\b'), // Phone numbers with area code in parentheses
    RegExp(r'\bdummy\b', caseSensitive: false), // Dummy data
    RegExp(r'\btest\b', caseSensitive: false), // Test data
    RegExp(r'\bsample\b', caseSensitive: false), // Sample data
    RegExp(r'\bexample\b', caseSensitive: false), // Example data
    RegExp(r'\bmock\b', caseSensitive: false), // Mock data
    RegExp(r'\bfaker\b', caseSensitive: false), // Faker data
  ];

  debugPrint('Scanning lib directory: ${libDir.path}');
  scanDirectory(libDir, sensitivePatterns, baseDir: libDir);
  debugPrint('--- End of lib directory ---\n');

  debugPrint('Listing .json files in assets, lib, and root directories:\n');
  listJsonFiles(projectDir, recursive: false); // Root directory, non-recursive
  listJsonFiles(assetsDir, recursive: true); // assets directory, recursive
  listJsonFiles(libDir, recursive: true); // lib directory, recursive
}

void scanDirectory(Directory dir, List<RegExp> sensitivePatterns,
    {Directory? baseDir}) {
  if (!dir.existsSync()) {
    debugPrint('Directory ${dir.path} does not exist.');
    return;
  }

  final filesWithSensitiveInfo = <String, List<String>>{};

  dir.listSync(recursive: true).forEach((entity) {
    if (entity is File) {
      final relativePath = baseDir != null
          ? entity.path.replaceFirst(baseDir.path, '')
          : entity.path;
      try {
        final content = entity.readAsStringSync();
        for (var pattern in sensitivePatterns) {
          final matches = pattern.allMatches(content);
          if (matches.isNotEmpty) {
            filesWithSensitiveInfo.putIfAbsent(relativePath, () => []);
            for (var match in matches) {
              filesWithSensitiveInfo[relativePath]!.add(match.group(0)!);
            }
          }
        }
      } catch (e) {
        // Skip files that cannot be read as text
        debugPrint('Skipping file: $relativePath due to error: $e');
      }
    }
  });

  if (filesWithSensitiveInfo.isNotEmpty) {
    debugPrint(
        '\x1B[31m// Files containing potential sensitive information:\x1B[0m');
    filesWithSensitiveInfo.forEach((filePath, sensitiveData) {
      debugPrint('\x1B[34m$filePath:\x1B[0m');
      for (var data in sensitiveData) {
        debugPrint('  - \x1B[33m$data\x1B[0m');
      }
    });
    debugPrint('');
  }
}

void listJsonFiles(Directory dir, {bool recursive = false}) {
  if (!dir.existsSync()) {
    debugPrint('Directory ${dir.path} does not exist.');
    return;
  }

  final jsonFiles = dir
      .listSync(recursive: recursive)
      .where((entity) => entity is File && entity.path.endsWith('.json'))
      .map((entity) =>
          entity.path.replaceFirst(dir.path, '').replaceFirst('/', ''));

  if (jsonFiles.isNotEmpty) {
    debugPrint('Directory: ${dir.path}');
    for (var file in jsonFiles) {
      debugPrint('  - $file');
    }
    debugPrint('');
  }
}
