class LanguageController {

  static final items = ["Português (pt-BR)", "English (en-US)"];
  static String atualLanguage = getDefault();

  static void setAtualLanguage(String newLanguage) {
    atualLanguage = newLanguage;
  }

  static String getDefault() {
    return "Português (pt-BR)";
  }
}
