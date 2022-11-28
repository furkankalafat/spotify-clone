import 'package:flutter/material.dart';

import '../../../app_ui/app_color/app_color.dart';
import 'widgets/album_card.dart';
import 'widgets/bottom_controls.dart';
import 'widgets/player_controls.dart';
import 'widgets/progress_bar.dart';
import 'widgets/title_playing.dart';
import 'widgets/top_bar_controls.dart';

class PlayerView extends StatelessWidget {
  const PlayerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.instance.spotifyDark,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: const <Widget>[
            TopBarControls(),
            AlbumCard(),
            TitlePlaying(),
            AudioProgressBar(),
            PlayerControls(),
            BottomControls()
          ],
        ),
      ),
    );
  }
}
