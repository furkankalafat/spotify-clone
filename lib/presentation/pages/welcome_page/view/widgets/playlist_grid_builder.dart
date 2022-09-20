import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/presentation/pages/welcome_page/view/widgets/playlist_grid_item.dart';

class PlaylistGridBuilder extends StatelessWidget {
  const PlaylistGridBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gridPlaylist =
        List<PlaylistGridItem>.generate(6, (index) => const PlaylistGridItem());
    return Wrap(
      spacing: 9.w,
      runSpacing: 8.h,
      children: gridPlaylist,
    );
  }
}
