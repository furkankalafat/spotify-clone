import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/presentation/app_components/widgets/named_grid_list.dart';
import 'package:spotify_clone/presentation/app_ui/app_text/locale_text.dart';
import 'package:spotify_clone/presentation/pages/welcome_page/view/widgets/featured_playlist_grid_builder.dart';

class NamedGridListBuilder extends StatelessWidget {
  final String? title;
  final String? subTitle;
  const NamedGridListBuilder({
    Key? key,
    this.title,
    this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> featuredGenres = [
      LocaleText.instance.pop,
      LocaleText.instance.jazz,
      LocaleText.instance.hipHop,
      LocaleText.instance.blues,
    ];
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: ((context, index) => NamedGridList(
              text: featuredGenres[index],
              child: FeaturedPlaylistGridBuilder(
                title: title,
                subTitle: subTitle,
              ),
            )),
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 40.h,
          );
        },
        itemCount: featuredGenres.length);
  }
}
