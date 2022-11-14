import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spotify_clone/presentation/pages/library_page/view/library_view.dart';
import 'package:spotify_clone/presentation/pages/welcome_page/view/welcome_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return const GetMaterialApp(
          home: WelcomeView(),
        );
      },
    );
  }
}
