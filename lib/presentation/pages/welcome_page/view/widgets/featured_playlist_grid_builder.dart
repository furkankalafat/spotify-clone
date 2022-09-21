import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/presentation/pages/welcome_page/view/widgets/featured_playlist_grid_item.dart';

class FeaturedPlaylistGridBuilder extends StatelessWidget {
  final String? title;
  final String? subTitle;
  const FeaturedPlaylistGridBuilder({
    Key? key,
    this.title,
    this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.h,
      child: ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 16.w,
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: ((context, index) => FeaturedPlaylistGridItem(
                title: title,
                subTitle: subTitle,
              ))),
    );
  }
}
