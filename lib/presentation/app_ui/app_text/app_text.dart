class LocaleText {
  static LocaleText? _instance;
  static LocaleText get instance {
    return _instance ??= LocaleText._init();
  }

  LocaleText._init();
  final String welcomeText = "Good Morning";
}
