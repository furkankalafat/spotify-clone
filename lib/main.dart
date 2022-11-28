import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify_clone/core/init/language/language_manager.dart';
import 'package:spotify_clone/presentation/pages/library_page/view/library_view.dart';
import 'package:spotify_clone/presentation/pages/player_page/view/player_view.dart';
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
