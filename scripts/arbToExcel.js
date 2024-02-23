/**
 * @file arbToExcel.js
 * @brief This file contains the logic to generate an Excel file from the ARB files.
 * @version 1.0
 * @summary This file is inside `{root}/scripts` folder. The arb files are inside `{root}/lib/l10n` folder. We have to read all the arb files and generate an Excel file with the translations. Excel file should contain the following columns:
 * - Key
 * - English (en)
 * ... and the rest of the languages in that folder. (only consider files in the format of `app_{language_code}.arb`)
 */

const fs = require("fs");
const path = require("path");
const xlsx = require("xlsx");

const l10nPath = path.join(__dirname, "..", "lib", "l10n");
const excelPath = path.join(__dirname, "translations.xlsx");

const languages = [];
const translations = {};

const priorityLanguageCodes = ["te", "hi"];

fs.readdirSync(l10nPath)
  .sort((a, b) => {
    // `a` and `b` are of the format `app_{language_code}.arb`
    // Sort the languages based on priority, if a language is not in priorityLanguageCodes, then sort based on the language code.
    // languages that are in priorityLanguageCodes should come first.
    const aLang = a.split("_")[1].split(".")[0];
    const bLang = b.split("_")[1].split(".")[0];
    const aIndex = priorityLanguageCodes.indexOf(aLang);
    const bIndex = priorityLanguageCodes.indexOf(bLang);
    if (aIndex === -1 && bIndex === -1) {
      return aLang.localeCompare(bLang);
    }
    if (aIndex === -1) {
      return 1;
    }
    if (bIndex === -1) {
      return -1;
    }
    return aIndex - bIndex;
  })
  .forEach((file) => {
    if (!file.startsWith("app_") || !file.endsWith(".arb")) return;
    console.log(file);
    const language = file.split("_")[1].split(".")[0];
    languages.push(language);
    const fileContent = fs.readFileSync(path.join(l10nPath, file), "utf8");
    const json = JSON.parse(fileContent);
    for (const key in json) {
      if (!translations[key]) {
        translations[key] = {};
      }
      translations[key][language] = json[key];
    }
  });

const wb = xlsx.utils.book_new();
const ws = xlsx.utils.json_to_sheet([{}]);
const wscols = [];
wscols.push({ wch: 30 });
wscols.push({ wch: 30 });
for (const language of languages) {
  wscols.push({ wch: 30 });
}
ws["!cols"] = wscols;

const headers = ["Key", "English"];
for (const language of languages) {
  if (language === "en") continue;
  headers.push(language);
}
xlsx.utils.sheet_add_aoa(ws, [headers], { origin: "A1" });
let row = 2;
for (const key in translations) {
  const rowContent = [key, translations[key]["en"]];
  for (const language of languages) {
    if (language === "en") continue;
    rowContent.push(translations[key][language]);
  }
  xlsx.utils.sheet_add_aoa(ws, [rowContent], { origin: `A${row}` });
  row++;
}

xlsx.utils.book_append_sheet(wb, ws, "Translations");
xlsx.writeFile(wb, excelPath);

console.log(`Excel file generated at ${excelPath}`);
