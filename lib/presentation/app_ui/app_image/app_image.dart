class AppImage {
  static AppImage? _instance;
  static AppImage get instance {
    return _instance ??= AppImage._init();
  }

  static const String _folder = 'assets/images/';
  static const String _icons = '${_folder}icons/';

  AppImage._init();
  final String profilePhoto = _icons + '${_icons}profile_photo.png';

  final String iconHomeOutlined = _icons + '${_icons}icon_home_outlined.png';
  final String iconHomeFilled = _icons + '${_icons}icon_home_filled.png';
  final String iconFilter = _icons + '${_icons}icon_filter.png';
  final String iconAdd = _icons + '${_icons}icon_add.png';
  final String iconSearchOutlined =
      _icons + '${_icons}icon_search_outlined.png';
}
