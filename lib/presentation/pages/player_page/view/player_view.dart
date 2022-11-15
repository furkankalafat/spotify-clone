import 'package:flutter/material.dart';

import '../../../app_ui/app_color/app_color.dart';
import 'widgets/player_controls.dart';

class PlayerView extends StatelessWidget {
  const PlayerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.instance.spotifyDark,
      body: Row(
        children: const <Widget>[
          PlayerControls(),
          //AlbumCard(),
          //TitlePlaying(),
          //BottomIcons(),
        ],
      ),
    );
  }
}
