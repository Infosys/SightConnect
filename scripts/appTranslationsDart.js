const fs = require("fs");
const path = require("path");
const { getLanguageName } = require("./utils/language");
const { capitalize } = require("./utils/string");

appTranslationsDart();

function appTranslationsDart() {
  console.log("Reading the app_translations folder...");
  const appTranslationsFolder = path.join(__dirname, "app_translations");
  const files = fs.readdirSync(appTranslationsFolder);

  console.log("Creating the app_translations_dart folder...");
  const appTranslationsDartFolder = path.join(
    __dirname,
    "app_translations_dart"
  );
  if (!fs.existsSync(appTranslationsDartFolder)) {
    fs.mkdirSync(appTranslationsDartFolder);
  }

  console.log("Loading English translations...");
  const englishTranslations = JSON.parse(
    fs.readFileSync(path.join(appTranslationsFolder, "app_en.arb"), "utf-8")
  );

  console.log("Generating the dart files...");
  files.forEach((file) => {
    const filePath = path.join(appTranslationsFolder, file);
    const translations = JSON.parse(fs.readFileSync(filePath, "utf-8"));
    const languageCode = translations["@@locale"];

    const dartFile = path.join(
      __dirname,
      "app_translations_dart",
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
    // console.log(dartContent);
    fs.writeFileSync(dartFile, dartContent);
    console.log(`Generated ${dartFile}`);
  });

  console.log("Process completed successfully.");
}

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
    for (const param of params) {
      returnStatement = returnStatement.replaceAll(`{${param}}`, `$${param}`);
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
