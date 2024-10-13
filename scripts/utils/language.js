/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// Utils
const languageMap = {
  ml: "Malayalam",
  or: "Oriya",
  te: "Telugu",
  kn: "Kannada",
  gu: "Gujarati",
  hi: "Hindi",
  ta: "Tamil",
  bn: "Bengali",
  mr: "Marathi",
  as: "Assamese",
  ur: "Urdu",
  en: "English",
};
const getLanguageName = (languageCode) => languageMap[languageCode];

module.exports = {
  getLanguageName,
};
