import 'package:google_mlkit_translation/google_mlkit_translation.dart';
import 'package:chatbot/utils/language_utils.dart';

final modelManager = OnDeviceTranslatorModelManager();
final pendingModels = <LanguageOption>[];

Future<bool> isModelDownloaded(LanguageOption option) async {
  return modelManager
      .isModelDownloaded(translateLanguageMap[option]?.bcpCode ?? "");
  // return downloadedModelsMap[option] ?? false;
}

Future<bool> downloadModel(LanguageOption option) async {
  try {
    return modelManager
        .downloadModel(translateLanguageMap[option]?.bcpCode ?? "");
  } catch (e) {
    return false;
  }
}

Future<bool> deleteModel(LanguageOption option) async {
  try {
    return modelManager
        .deleteModel(translateLanguageMap[option]?.bcpCode ?? "");
  } catch (e) {
    return false;
  }
}

bool isModelPending(LanguageOption option) {
  return pendingModels.contains(option);
}
