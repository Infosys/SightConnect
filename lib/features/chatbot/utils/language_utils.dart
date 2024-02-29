String resolveLanguageByLocaleCode(String? localeCode) {
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
