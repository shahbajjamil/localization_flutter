class LanguageModel {
  String language;
  String subLanguage;
  String languageCode;
  LanguageModel({
    required this.language,
    required this.subLanguage,
    required this.languageCode,
  });
}

List<LanguageModel> get languageModel => [
      LanguageModel(
        language: 'عربي',
        subLanguage: 'Arabic',
        languageCode: 'ar',
      ),
      LanguageModel(
        language: 'English',
        subLanguage: 'English',
        languageCode: 'en',
      ),
      LanguageModel(
        language: 'हिंदी',
        subLanguage: 'Hindi',
        languageCode: 'hi',
      ),
    ];

// List<String> languages = [
//   'عربي',
//   'dansk',
//   'Nederlands',
//   'English',
//   'Français',
//   'Deutsch',
//   'Ελληνικά',
//   'हिंदी',
//   'bahasa Indonesia',
//   'Italiano',
//   '日本',
//   '한국인',
//   'Norsk Bokmal',
//   'Polski',
//   'Português',
//   'Русский',
//   '简体中文',
//   'Español',
//   'แบบไทย',
//   'Türkçe',
//   'Tiếng Việt',
// ];
// List<String> subLanguage = [
//   'Arabic',
//   'Danish',
//   'Dutch',
//   'English',
//   'French',
//   'German',
//   'Greek',
//   'Hindi',
//   'Indonesian',
//   'Italian',
//   'Japanese',
//   'Korean',
//   'Norwegian Bokmal',
//   'Polish',
//   'Portuguese',
//   'Russian',
//   'Simplified Chinese',
//   'Spanish',
//   'Thai',
//   'Turkish',
//   'Vietnamese',
// ];
// List languageCode = [
//   'ar',
//   'da',
//   'nl',
//   'en',
//   'fr',
//   'de',
//   'el',
//   'hi',
//   'id',
//   'it',
//   'ja',
//   'ko',
//   'nb',
//   'pl',
//   'pt',
//   'ru',
//   'zh',
//   'es',
//   'th',
//   'tr',
//   'vi',
// ];
