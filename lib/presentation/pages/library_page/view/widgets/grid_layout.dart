import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/presentation/pages/welcome_page/view/widgets/featured_playlist_grid_item.dart';

class GridLayout extends StatelessWidget {
  const GridLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> playlistItem = [
      'Reathe TR',
      'Reathe Eskiler',
      'Reathe Damar',
      'Reathe Main',
      'Happy Hour',
      'Reathe JAM'
    ];
    final gridPlaylist = List<FeaturedPlaylistGridItem>.generate(
        6,
        (index) => FeaturedPlaylistGridItem(
              title: playlistItem[index],
              subTitle: playlistItem[index],
            ));
    return Wrap(
      spacing: 32.w,
      runSpacing: 55.h,
      children: gridPlaylist,
    );
  }
}
