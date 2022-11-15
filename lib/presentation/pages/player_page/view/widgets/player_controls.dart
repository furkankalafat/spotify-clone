import 'package:flutter/material.dart';

import '../buttons/player_back.dart';
import '../buttons/player_pause.dart';
import '../buttons/player_repeat.dart';
import '../buttons/player_shuffle.dart';
import '../buttons/player_skip.dart';

class PlayerControls extends StatelessWidget {
  const PlayerControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        PlayerShuffle(),
        PlayerBack(),
        PlayerPause(),
        PlayerSkip(),
        PlayerRepeat(),
      ],
    );
  }
}
