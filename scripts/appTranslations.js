const { appTranslationsARB } = require("./appTranslationsARB");
const { appTranslationsDart } = require("./appTranslationsDart");

console.log("Executing script to generate arb files from the Excel file...");
appTranslationsARB();

console.log("Executing script to generate dart files from the arb files...");
appTranslationsDart();
console.log("Both the scripts have been executed successfully.");
