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
  final String iconHeartOutlined = '${_icons}icon_heart_outlined.png';
  final String iconHeartFilled = '${_icons}icon_heart_filled.png';
  final String iconPause = '${_icons}icon_pause.png';               
  final String iconSkip = '${_icons}icon_next.png';
  final String iconBack = '${_icons}icon_previous.png';
  final String iconShuffle = '${_icons}icon_shuffle.png';
  final String iconShuffleActive = '${_icons}icon_shuffle_active.png';
  final String iconRepeat = '${_icons}icon_repeat.png';
  final String iconRepeatActive = '${_icons}icon_repeat_active.png';
  final String iconDevices = '${_icons}icon_devices.png';
  final String iconDown = '${_icons}icon_down.png';
  final String iconListPlaying = '${_icons}icon_queue.png';
  final String iconMenuDots = '${_icons}icon_menu_dots.png';
}
