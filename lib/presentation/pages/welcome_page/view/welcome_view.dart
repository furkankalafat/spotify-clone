import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/presentation/app_components/widgets/app_bar_widget.dart';
import 'package:spotify_clone/presentation/app_components/widgets/clickable_container.dart';
import 'package:spotify_clone/presentation/app_ui/app_color/app_color.dart';
import 'package:spotify_clone/presentation/app_ui/app_text/locale_text.dart';
import 'package:spotify_clone/presentation/pages/welcome_page/view/widgets/named_grid_list_builder.dart';
import 'package:spotify_clone/presentation/pages/welcome_page/view/widgets/user_playlist_grid_builder.dart';
import '../../../app_components/widgets/app_navigation_bar.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppNavigationBar(),
      backgroundColor: AppColor.instance.spotifyDark,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: AppBarWidget(
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
              ),
              SizedBox(
                height: 25.h,
              ),
              const UserPlaylistGridBuilder(),
              SizedBox(
                height: 36.h,
              ),
              NamedGridListBuilder(
                title: LocaleText.instance.welcomeText,
                subTitle: LocaleText.instance.welcomeText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
