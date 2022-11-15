import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SpotifyApp extends StatefulWidget {
  final Widget home;
  const SpotifyApp({
    Key? key,
    required this.home,
  }) : super(key: key);

  @override
  State<SpotifyApp> createState() => _SpotifyAppState();
}

class _SpotifyAppState extends State<SpotifyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => GetMaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: child,
      ),
      child: widget.home,
    );
  }
}
