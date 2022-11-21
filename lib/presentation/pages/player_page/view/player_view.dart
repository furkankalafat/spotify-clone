import 'package:flutter/material.dart';
import 'package:spotify_clone/presentation/pages/player_page/view/widgets/bottom_controls.dart';
import 'package:spotify_clone/presentation/pages/player_page/view/widgets/player_controls.dart';
import 'package:spotify_clone/presentation/pages/player_page/view/widgets/title_playing.dart';
import 'package:spotify_clone/presentation/pages/player_page/view/widgets/top_bar_controls.dart';

import '../../../app_ui/app_color/app_color.dart';

class PlayerView extends StatelessWidget {
  const PlayerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.instance.spotifyDark,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const <Widget>[
            TopBarControls(),
            TitlePlaying(),
            PlayerControls(),
            BottomControls()
          ],
        ),
      ),
    );
  }
}
