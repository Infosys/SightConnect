/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import fs from "fs";
import path from "path";

const updateArbs = (
  sourceDirPath: string,
  targetDirPath: string,
  locales?: string[],
  options: {
    ignoreLocales: string[];
  } = {
    ignoreLocales: ["en", "te"],
  }
) => {
  if (!fs.existsSync(targetDirPath)) {
    console.log(`Creating directory: ${targetDirPath}`);
    fs.mkdirSync(targetDirPath, { recursive: true });
  }
  if (!locales) {
    console.error(
      "Locales not found, extracting locales from the source directory..."
    );
    const files = fs.readdirSync(sourceDirPath);
    locales = files
      .filter((file) => file.endsWith(".arb") && file.startsWith("app_"))
      .map((file) => file.split("_")[1].split(".")[0]);
  }

  locales.forEach((locale) => {
    if (options.ignoreLocales.includes(locale)) {
      console.log(`Ignoring ${locale}`);
      return;
    }
    const sourceFilePath = path.join(sourceDirPath, `app_${locale}.arb`);
    console.log(`====== Updating \`app_${locale}.arb\` ======`);
    if (!fs.existsSync(sourceFilePath)) {
      console.error(`File not found: ${sourceFilePath}`);
      return;
    }
    const sourceFileContent = JSON.parse(
      fs.readFileSync(sourceFilePath, "utf-8")
    );
    let targetFileContent: { [key: string]: string } = {};

    const targetFilePath = path.join(targetDirPath, `app_${locale}.arb`);
    if (fs.existsSync(targetFilePath)) {
      console.log(`Target file found: ${targetFilePath}`);
      targetFileContent = JSON.parse(fs.readFileSync(targetFilePath, "utf-8"));
    }

    Object.keys(sourceFileContent).forEach((key) => {
      if (targetFileContent[key]) {
        // console.log(`Key exists: ${key}`);
      } else {
        // console.log(`Key added: ${key}`);
      }
      targetFileContent[key] = sourceFileContent[key];
    });

    fs.writeFileSync(
      targetFilePath,
      JSON.stringify(targetFileContent, null, 2)
    );
    console.log(`\`app_${locale}.arb\` updated successfully`);
  });
};

const sourceDirPath = path.join(__dirname, "resources/l10n");
const targetDirPath = path.join(__dirname, "../lib/l10n");
// const locales = ["bn", "hi", "gu", "kn", "ml", "mr", "or", "ta", "ur"];
const locales = undefined; // ["mr"];
console.log("Source directory: ", sourceDirPath);
console.log("Target directory: ", targetDirPath);
console.log("Locales: ", locales);
updateArbs(sourceDirPath, targetDirPath, locales);
