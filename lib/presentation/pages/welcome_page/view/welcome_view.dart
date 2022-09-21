import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/presentation/app_components/widgets/app_bar_widget.dart';
import 'package:spotify_clone/presentation/app_components/widgets/clickable_container.dart';
import 'package:spotify_clone/presentation/app_components/widgets/named_grid_list.dart';
import 'package:spotify_clone/presentation/app_ui/app_color/app_color.dart';
import 'package:spotify_clone/presentation/app_ui/app_text/locale_text.dart';
import 'package:spotify_clone/presentation/pages/welcome_page/view/widgets/featured_playlist_grid_builder.dart';
import 'package:spotify_clone/presentation/pages/welcome_page/view/widgets/user_playlist_grid_builder.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.instance.spotifyDark,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            children: [
              AppBarWidget(
                text: LocaleText.instance.welcomeText,
                actions: [
                  ClickableContainer(
                    onTap: (() {}),
                    child: const Icon(
                      Icons.notifications_none_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  ClickableContainer(
                    onTap: (() {}),
                    child: const Icon(
                      Icons.av_timer_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  ClickableContainer(
                    onTap: (() {}),
                    child: const Icon(
                      Icons.settings_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              const UserPlaylistGridBuilder(),
              SizedBox(
                height: 36.h,
              ),
              NamedGridList(
                text: LocaleText.instance.pop,
                child: FeaturedPlaylistGridBuilder(
                  title: LocaleText.instance.welcomeText,
                  subTitle: LocaleText.instance.welcomeText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
