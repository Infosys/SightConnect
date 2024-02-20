const xlsx = require("xlsx");
const fs = require("fs");
const path = require("path");

function appTranslationsARB() {
  console.log("Reading the Excel file...");
  // If the file is not found, show an error message and stop the process.
  const xlsxFilePath = path.join(__dirname, "App_Translations.xlsx");
  if (!fs.existsSync(xlsxFilePath)) {
    console.error("The file 'App_Translations.xlsx' was not found.");
    return;
  }
  const workbook = xlsx.readFile(xlsxFilePath);
  const sheet_name_list = workbook.SheetNames;
  const translations = xlsx.utils.sheet_to_json(
    workbook.Sheets[sheet_name_list[0]]
  );
  const languages = Object.keys(translations[0]).slice(1);

  // console.log("Creating the app_translations folder...");
  const arbFilesFolderPath = path.join(__dirname, "../lib/l10n");
  // if arbFilesFolderPath does not exist, show an error message and stop the process.
  if (!fs.existsSync(arbFilesFolderPath)) {
    console.error("The folder 'lib/l10n' was not found.");
    return;
  }

  // if app.en.arb does not exist, log an error
  if (!fs.existsSync(path.join(arbFilesFolderPath, "app_en.arb"))) {
    console.error("The file 'app_en.arb' was not found.");
    return;
  }

  const englishTranslations = JSON.parse(
    fs.readFileSync(path.join(arbFilesFolderPath, "app_en.arb"), "utf8")
  );

  console.log("Generating the arb files...");
  languages.forEach((language) => {
    const translationsObj = {};

    const definitions = {};
    Object.keys(englishTranslations).forEach((key) => {
      if (key.startsWith("@") && !key.startsWith("@@")) {
        definitions[key] = englishTranslations[key];
        definitions[key.slice(1)] = englishTranslations[key.slice(1)];
      }
    });

    translations.forEach((translation) => {
      translationsObj[translation.id] =
        translation[language] || englishTranslations[translation.id] || "";
    });

    const arbFile = path.join(arbFilesFolderPath, `app_${language}.arb`);

    let finalTranslations = {
      "@@locale": language,
      "@@last_modified": new Date().toISOString(),
      "@@author": "appTranslationsARB.js",
      ...definitions,
    };

    if (fs.existsSync(arbFile)) {
      const existingTranslations = JSON.parse(fs.readFileSync(arbFile, "utf8"));
      finalTranslations = {
        ...finalTranslations,
        ...existingTranslations,
        ...translationsObj,
      };
      fs.writeFileSync(arbFile, JSON.stringify(finalTranslations, null, 2));
      console.log(`Updated app_${language}.arb`);
    } else {
      finalTranslations = {
        ...finalTranslations,
        ...translationsObj,
      };
      fs.writeFileSync(arbFile, JSON.stringify(finalTranslations, null, 2));
      console.log(`Generated app_${language}.arb`);
    }
  });

  console.log("All the arb files are generated/updated successfully.");
}

module.exports = {
  appTranslationsARB,
};
