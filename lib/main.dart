import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/init/language/language_manager.dart';
import 'package:spotify_clone/presentation/pages/app_tab_bar_page/view/app_tab_bar_view.dart';
import 'package:spotify_clone/presentation/spotify_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  initializeApp();
}

Future<void> initializeApp() async {
  final Widget home;
  home = const AppTabBarView();
  final easyLocalization = EasyLocalization(
    supportedLocales: LanguageManager.instance.supportedLocales,
    path: LanguageManager.instance.path,
    useFallbackTranslations: true,
    child: SpotifyApp(
      home: home,
    ),
  );
  runApp(easyLocalization);
}
