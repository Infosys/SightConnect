const xlsx = require("xlsx");
const fs = require("fs");
const path = require("path");

appTranslations();

function appTranslations() {
  console.log("Reading the Excel file...");
  const workbook = xlsx.readFile(path.join(__dirname, "App_Translations.xlsx"));
  const sheet_name_list = workbook.SheetNames;
  const translations = xlsx.utils.sheet_to_json(
    workbook.Sheets[sheet_name_list[0]]
  );
  const languages = Object.keys(translations[0]).slice(1);

  console.log("Creating the app_translations folder...");
  const appTranslationsFolder = path.join(__dirname, "app_translations");
  if (!fs.existsSync(appTranslationsFolder)) {
    fs.mkdirSync(appTranslationsFolder);
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

    const arbFile = path.join(appTranslationsFolder, `app_${language}.arb`);
    fs.writeFileSync(arbFile, JSON.stringify(translationsObj, null, 2));
    console.log(`Generated ${arbFile}`);
  });

  console.log("Process completed successfully.");
}
