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
