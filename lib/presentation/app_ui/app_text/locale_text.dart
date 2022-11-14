class LocaleText {
  static LocaleText? _instance;
  static LocaleText get instance {
    return _instance ??= LocaleText._init();
  }

  LocaleText._init();
  final String welcomeText = "Good Morning";
  final String pop = "Pop";
  final String hipHop = "Hip-Hop";
  final String jazz = "Jazz";
  final String blues = "Blues";
}
