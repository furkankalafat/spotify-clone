class LocaleText {
  static LocaleText? _instance;
  static LocaleText get instance {
    return _instance ??= LocaleText._init();
  }

  LocaleText._init();

  final String welcomeText = "Good Morning";
  final String searchTitle = "Search";
  final String searchBarDescription = "Artists, songs or podcasts";
  final String browseAll = "Browse all";
}
