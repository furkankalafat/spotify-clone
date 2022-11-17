import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/presentation/pages/library_page/view/widgets/playlist_list_item.dart';

class ListLayout extends StatelessWidget {
  const ListLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> playlistItem = [
      'Reathe TR',
      'Reathe Eskiler',
      'Reathe Damar',
      'Reathe Main',
      'Happy Hour',
      'Türkçe Rap',
      'TOFAŞLA YANLAMALIK',
      'Reathe JAM',
    ];
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: ((context, index) => PlaylistListItem(
              title: playlistItem[index],
              subTitle: playlistItem[index],
            )),
        separatorBuilder: ((context, index) {
          return SizedBox(height: 20.h);
        }),
        itemCount: playlistItem.length);
  }
}
