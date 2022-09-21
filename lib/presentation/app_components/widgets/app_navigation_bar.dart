import 'package:flutter/material.dart';
import 'package:spotify_clone/presentation/app_ui/app_color/app_color.dart';

class AppNavigationBar extends StatefulWidget {
  const AppNavigationBar({Key? key}) : super(key: key);

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: AppColor.instance.spotifyWhite,
        unselectedItemColor: AppColor.instance.lightGrey,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => (currentIndex = index)),
        backgroundColor: AppColor.instance.darkGrey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.my_library_books_outlined),
              label: "Your Library"),
        ]);
  }
}
