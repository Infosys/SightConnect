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

  console.log("Generating the arb files...");
  languages.forEach((language) => {
    const translationsObj = {};

    translationsObj["@@locale"] = language;
    translationsObj["@stepNumber"] = {
      placeholders: {
        current: {
          type: "String",
        },
        total: {
          type: "String",
        },
      },
    };

    translations.forEach((translation) => {
      translationsObj[translation.id] = translation[language];
    });

    const arbFile = path.join(arbFilesFolderPath, `app_${language}.arb`);
    fs.writeFileSync(arbFile, JSON.stringify(translationsObj, null, 2));
    console.log(`Generated app_${language}.arb`);
  });

  console.log("All the arb files are generated successfully.");
}

module.exports = {
  appTranslationsARB,
};
