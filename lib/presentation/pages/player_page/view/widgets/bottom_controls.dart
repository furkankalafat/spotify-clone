import 'package:flutter/material.dart';

import '../buttons/bottom_controls/devices.dart';
import '../buttons/bottom_controls/list_playing.dart';

class BottomControls extends StatelessWidget {
  const BottomControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        Devices(),
        ListPlaying()
      ],
    );
  }
}
