const xlsx = require("xlsx");
const fs = require("fs");
const path = require("path");

console.log("Reading the Excel files...");

const xlsxFilePath1 = path.join(__dirname, "App_Translations.xlsx");
const xlsxFilePath2 = path.join(__dirname, "translations.xlsx");
if (!fs.existsSync(xlsxFilePath1) || !fs.existsSync(xlsxFilePath2)) {
  console.error("One or both of the Excel files were not found.");
  return;
}

const workbook1 = xlsx.readFile(xlsxFilePath1);
const workbook2 = xlsx.readFile(xlsxFilePath2);

const sheet1 = workbook1.Sheets[workbook1.SheetNames[0]];
const sheet2 = workbook2.Sheets[workbook2.SheetNames[0]];

const translations1 = xlsx.utils.sheet_to_json(sheet1);
const translations2 = xlsx.utils.sheet_to_json(sheet2);

console.log("Translations from first file:", translations1);
console.log("Translations from second file:", translations2);

const keys1 = translations1.map(row => row.Key);
const keys2 = translations2.map(row => row.Key);

console.log("Keys from first file:", keys1);
console.log("Keys from second file:", keys2);

// Get keys that are in file1 but not in file2
const keysInFile1NotInFile2 = keys1.filter(key => !keys2.includes(key));

// Get keys that are in file2 but not in file1
const keysInFile2NotInFile1 = keys2.filter(key => !keys1.includes(key));

// Combine the keys from both files
const combinedKeys = [...keysInFile1NotInFile2, ...keysInFile2NotInFile1];

console.log("Combined keys:", combinedKeys);

// Prepare the output data
const output = combinedKeys.map(key => {
  // If the key is in file1, return the corresponding row from file1
  if (keys1.includes(key)) {
    return translations1.find(row => row.Key === key);
  }
  // Otherwise, return the corresponding row from file2
  return translations2.find(row => row.Key === key);
});

console.log("Output data:", output);

const newWorkbook = xlsx.utils.book_new();
const newWorksheet = xlsx.utils.json_to_sheet(output);

xlsx.utils.book_append_sheet(newWorkbook, newWorksheet, "Combined Translations");
xlsx.writeFile(newWorkbook, path.join(__dirname, "output.xlsx"));

console.log("Excel file with combined translations has been created as output.xlsx");