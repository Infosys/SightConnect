/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

const { appTranslationsARB } = require("./appTranslationsARB");
const { appTranslationsDart } = require("./appTranslationsDart");

console.log("Executing script to generate arb files from the Excel file...");
appTranslationsARB();

console.log("Executing script to generate dart files from the arb files...");
appTranslationsDart();
console.log("Both the scripts have been executed successfully.");
