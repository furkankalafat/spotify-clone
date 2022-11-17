class AppImage {
  static AppImage? _instance;
  static AppImage get instance {
    return _instance ??= AppImage._init();
  }

  static const String _folder = 'assets/images/';
  static const String _icons = '${_folder}icons/';

  AppImage._init();
  final String profilePhoto = '${_icons}profile_photo.png';

  final String iconHomeOutlined = '${_icons}icon_home_outlined.png';
  final String iconHomeFilled = '${_icons}icon_home_filled.png';
  final String iconSearchOutlined = '${_icons}icon_search_outlined.png';
  final String iconSearchFilled = '${_icons}icon_search_filled.png';
  final String iconLibraryOutlined = '${_icons}icon_library_outlined.png';
  final String iconLibraryFilled = '${_icons}icon_library_filled.png';
  final String iconFilter = '${_icons}icon_filter.png';
  final String iconAdd = '${_icons}icon_add.png';
  final String iconGridLayout = '${_icons}icon_grid_layout.png';
  final String iconListLayout = '${_icons}icon_list_layout.png';
}
