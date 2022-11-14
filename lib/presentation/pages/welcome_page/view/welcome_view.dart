import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_clone/presentation/app_components/widgets/clickable_container.dart';
import 'package:spotify_clone/presentation/app_components/widgets/named_widget.dart';
import 'package:spotify_clone/presentation/app_ui/app_color/app_color.dart';
import 'package:spotify_clone/presentation/pages/welcome_page/view/widgets/playlist_grid_builder.dart';

import '../../../../generated/locale_keys.g.dart';

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
              NamedWidget(
                text: LocaleKeys.good_morning,
                textStyle: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
                iconButton: ClickableContainer(
                    onTap: (() {}),
                    child: const Icon(
                      Icons.settings,
                      color: Colors.white,
                    )),
                child: const PlaylistGridBuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
