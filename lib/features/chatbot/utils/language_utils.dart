enum LanguageOption { en, hi, te, ta, kn }

String resolveLanguageName(LanguageOption option) {
  switch (option) {
    case LanguageOption.hi:
      return "Hindi (हिंदी)";
    case LanguageOption.te:
      return "Telugu (తెలుగు)";
    case LanguageOption.ta:
      return "Tamil (தமிழ்)";
    case LanguageOption.kn:
      return "Kannada (ಕನ್ನಡ)";
    default:
      return "English (India)";
  }
}

String resolveLanguageByLocaleCode(String localeCode) {
  switch (localeCode) {
    case 'hi':
      return "Hindi";
    case 'te':
      return "Telugu";
    case 'ta':
      return "Tamil";
    case 'kn':
      return "Kannada";
    case 'en':
      return "English"; 
    case 'ml':
      return 'Malayalam';
    case 'mr':
      return 'Marathi';
    case 'bn':
      return 'Bengali';
    case 'gu':
      return 'Gujarati';
    case 'as':
      return 'Assamese';
    case 'or':
      return 'Odia';
    default:
      return 'English';
  }
}

Map<LanguageOption, String> localeMap = {
  LanguageOption.en: 'en',
  LanguageOption.hi: 'hi',
  LanguageOption.te: 'te',
  LanguageOption.ta: 'ta',
  LanguageOption.kn: 'kn'
};

String resolveLocale(LanguageOption languageOption) {
  return localeMap[languageOption] ?? 'en';
}
