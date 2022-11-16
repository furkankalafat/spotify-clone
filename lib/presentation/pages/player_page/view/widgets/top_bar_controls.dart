import 'package:flutter/material.dart';

import '../buttons/top_bar_controls/down_button.dart';
import '../buttons/top_bar_controls/menu_dots.dart';

class TopBarControls extends StatelessWidget {
  const TopBarControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        DownButton(),
        MenuDots()
      ],
    );
  }
}
