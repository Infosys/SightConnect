const fs = require("fs");
const path = require("path");
const { getLanguageName } = require("./utils/language");
const { capitalize } = require("./utils/string");

function appTranslationsDart() {
  const arbFilesFolder = path.join(__dirname, "../lib/l10n");
  const dartFilesFolder = path.join(__dirname, "../lib/l10n");
  if (!fs.existsSync(arbFilesFolder)) {
    console.error("Invalid Path: Unable to load arb files!");
    return;
  }
  const arbFiles = fs
    .readdirSync(arbFilesFolder)
    .filter((file) => file.endsWith("arb"));

  if (!fs.existsSync(dartFilesFolder)) {
    console.error(`Invalid Path: ${dartFilesFolder} does not exit!`);
    return;
  }

  console.log("Loading English translations...");
  const englishArbFilePath = path.join(arbFilesFolder, "app_en.arb");
  if (!fs.existsSync(englishArbFilePath)) {
    console.error(`File not found: ${englishArbFilePath} not found`);
  }
  const englishTranslations = JSON.parse(
    fs.readFileSync(englishArbFilePath, "utf-8")
  );

  console.log("Generating the dart files...");
  arbFiles.forEach((file) => {
    const filePath = path.join(arbFilesFolder, file);
    const translations = JSON.parse(fs.readFileSync(filePath, "utf-8"));
    const languageCode = translations["@@locale"];

    const dartFile = path.join(
      dartFilesFolder,
      `app_localizations_${languageCode}.dart`
    );

    const getters = [];
    Object.keys(englishTranslations).forEach((key) => {
      const getter = resolveGetter(key, translations, "  ");
      if (!getter) return;
      getters.push(getter);
    });
    const dartContent = `import 'app_localizations.dart';

/// The translations for ${getLanguageName(languageCode)} (\`${languageCode}\`).
class AppLocalizations${capitalize(languageCode)} extends AppLocalizations {
  AppLocalizations${capitalize(
    languageCode
  )}([String locale = '${languageCode}']) : super(locale);

  ${getters.join("\n\n  ")}
}
`;
    fs.writeFileSync(dartFile, dartContent);
    console.log(`Generated app_localizations_${languageCode}.dart`);
  });

  // Now create `app_localizations.dart` file
  console.log("Generating app_localizations.dart...");
  fs.writeFileSync(
    path.join(dartFilesFolder, "app_localizations.dart"),
    getAppLocalizationsContent(
      arbFiles.map((file) => file.slice(4, -4)) // Language codes
    )
  );
  console.log("Generated app_localizations.dart");

  console.log("All the dart files are generated successfully.");

  // Utils
  /**
   *
   * @param {String} key
   * @param {{}} translations
   * @param {string} [leftPadding="  "]
   * @returns {String?}
   */
  function resolveGetter(key, translations, leftPadding = "  ") {
    if (key.startsWith("@@") || key.startsWith("@")) return;
    if (`@${key}` in translations) {
      // Return a function getter
      const config = translations[`@${key}`];
      // console.log("Config:", config);

      const params = Object.keys(config.placeholders);

      /**
       * @type {String}
       */
      let returnStatement = translations[key];
      if (!returnStatement) return "";
      for (const param of params) {
        returnStatement = returnStatement.replaceAll(
          `{${param}}`,
          `$\{${param}}`
        );
      }

      return `@override
${leftPadding}String ${key}(${params
        .map((param) => config.placeholders[param].type + " " + param)
        .join(", ")}) {
${leftPadding.repeat(2)}return '${returnStatement}';
${leftPadding}}`;
    }
    let value = translations[key] || englishTranslations[key];

    return `@override
${leftPadding}String get ${key} => '${value
      .replaceAll("'", "\\'")
      .replaceAll("\r", "\\r")
      .replaceAll("\n", "\\n")}';`;
  }

  /**
   * @param {String[]} languageCodes
   * @returns {String}
   */
  function getAppLocalizationsContent(languageCodes) {
    let content = "";

    const functionGetters = Object.keys(englishTranslations)
      .filter((key) => !key.startsWith("@@") && key.startsWith("@"))
      .map((key) => {
        const placeholders = englishTranslations[key].placeholders;
        const params = Object.keys(placeholders);

        return `/// No description provided for ${key}.
  ///
  /// In en, this message translates to:
  /// **'${englishTranslations[key.slice(1)]
    .replaceAll("'", "\\'")
    .replaceAll("\r", "\\r")
    .replaceAll("\n", "\\n")}'**
  String ${key.slice(1)}(${params
          .map((param) => `${placeholders[param].type} ${param}`)
          .join(", ")});`;
      });

    const plainGetters = Object.keys(englishTranslations)
      .filter(
        (key) => !(`@${key}` in englishTranslations) && !key.startsWith("@")
      )
      .map(
        (key) => `/// No description provided for @${key}.
  ///
  /// In en, this message translates to:
  /// **'${englishTranslations[key]
    .replaceAll("'", "\\'")
    .replaceAll("\r", "\\r")
    .replaceAll("\n", "\\n")}'**
  String get ${key};`
      );
    content += `import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

${languageCodes
  .map((code) => `import 'app_localizations_${code}.dart';`)
  .join("\n")}

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by \`AppLocalizations.of(context)\`.
///
/// Applications need to include \`AppLocalizations.delegate()\` in their app's
/// \`localizationDelegates\` list, and the locales they support in the app's
/// \`supportedLocales\` list. For example:
///
/// \`\`\`dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// \`\`\`
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// \`\`\`yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// \`\`\`
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    ${languageCodes.map((code) => `Locale('${code}')`).join(",\n    ")}
  ];

  ${[...functionGetters, ...plainGetters].join("\n\n  ")}
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[${languageCodes
    .map((code) => `'${code}'`)
    .join(", ")}].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    ${languageCodes
      .map(
        (code) =>
          `case '${code}': return AppLocalizations${capitalize(code)}();`
      )
      .join("\n    ")}
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}`;

    return content;
  }
}

module.exports = {
  appTranslationsDart,
};
