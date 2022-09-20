import 'package:flutter/material.dart';

class AppColor {
  static AppColor? _instance;
  static AppColor get instance {
    return _instance ??= AppColor._init();
  }

  AppColor._init();

  final Color spotifyDark = const Color(0xFF121212);
  final Color spotifyGreen = const Color(0XFF57B65F);
  final Color spotifyWhite = const Color(0XFFFFFFFF);
  final Color darkGrey = const Color(0XFF282828);
  final Color lightGrey = const Color(0XFFB3B3B3);
}
