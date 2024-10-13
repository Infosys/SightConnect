/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

const xlsx = require("xlsx");
const fs = require("fs");
const path = require("path");

function appTranslationsARB() {
  console.log("Starting appTranslationsARB...");

  console.log("Reading the Excel file...");
  const xlsxFilePath = path.join(__dirname, "App_Translations.xlsx");
  if (!fs.existsSync(xlsxFilePath)) {
    console.error("The file 'App_Translations.xlsx' was not found.");
    return;
  }

  console.log("Reading workbook from file...");
  const workbook = xlsx.readFile(xlsxFilePath);
  const sheet_name_list = workbook.SheetNames;
  console.log("Sheet names in workbook:", sheet_name_list);

  console.log("Converting first sheet to JSON...");
  const translations = xlsx.utils.sheet_to_json(workbook.Sheets[sheet_name_list[0]]);
  console.log("Translations:", translations);

  console.log("Extracting languages from translations...");
  const languages = Object.keys(translations[0]).slice(1);
  console.log("Languages:", languages);

  console.log("Checking for 'lib/l10n' folder...");
  const arbFilesFolderPath = path.join(__dirname, "../lib/l10n");
  if (!fs.existsSync(arbFilesFolderPath)) {
    console.error("The folder 'lib/l10n' was not found.");
    return;
  }

  console.log("Checking for 'app_en.arb' file...");
  if (!fs.existsSync(path.join(arbFilesFolderPath, "app_en.arb"))) {
    console.error("The file 'app_en.arb' was not found.");
    return;
  }

  console.log("Reading 'app_en.arb' file...");
  const englishTranslations = JSON.parse(fs.readFileSync(path.join(arbFilesFolderPath, "app_en.arb"), "utf8"));
  console.log("English translations:", englishTranslations);

  console.log("Generating the arb files...");
  languages.forEach((language) => {
    console.log(`Processing language: ${language}...`);
    const translationsObj = {};

    const definitions = {};
    console.log("Processing English translations...");
    Object.keys(englishTranslations).forEach((key) => {
      if (key.startsWith("@") && !key.startsWith("@@")) {
        definitions[key] = englishTranslations[key];
        definitions[key.slice(1)] = englishTranslations[key.slice(1)];
      }
    });

    console.log("Processing translations...");
    translations.forEach((translation) => {
      console.log('Current translation:', translation);
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

    console.log(`Checking if 'app_${language}.arb' exists...`);
    if (fs.existsSync(arbFile)) {
      console.log(`'app_${language}.arb' exists. Updating...`);
      const existingTranslations = JSON.parse(fs.readFileSync(arbFile, "utf8"));
      finalTranslations = {
        ...finalTranslations,
        ...existingTranslations,
        ...translationsObj,
      };
      fs.writeFileSync(arbFile, JSON.stringify(finalTranslations, null, 2));
      console.log(`Updated 'app_${language}.arb'`);
    } else {
      console.log(`'app_${language}.arb' does not exist. Generating...`);
      finalTranslations = {
        ...finalTranslations,
        ...translationsObj,
      };
      fs.writeFileSync(arbFile, JSON.stringify(finalTranslations, null, 2));
      console.log(`Generated 'app_${language}.arb'`);
    }
  });

  console.log("All the arb files are generated/updated successfully.");
}

module.exports = {
  appTranslationsARB,
};