import 'package:flutter/material.dart';
import 'package:spotify_clone/presentation/app_components/widgets/simple_button.dart';

class LibrarySortBar extends StatelessWidget {
  const LibrarySortBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SimpleButton(
          onTap: (() {}),
          child: Row(),
        ),
      ],
    );
  }
}
