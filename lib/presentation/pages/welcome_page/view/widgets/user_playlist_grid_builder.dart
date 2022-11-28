import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/presentation/pages/welcome_page/view/widgets/user_playlist_grid_item.dart';

class UserPlaylistGridBuilder extends StatelessWidget {
  const UserPlaylistGridBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gridPlaylist = List<UserPlaylistGridItem>.generate(
        6, (index) => const UserPlaylistGridItem());
    return Wrap(
      spacing: 9.w,
      runSpacing: 8.h,
      children: gridPlaylist,
    );
  }
}
