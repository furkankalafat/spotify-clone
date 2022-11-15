import 'package:flutter/material.dart';

import '../../../../app_components/widgets/app_image_widget.dart';
import '../../../../app_ui/app_image/app_image.dart';

class PlayerPause extends StatelessWidget {
  const PlayerPause({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: AppImageWidget(
        name: AppImage.instance.iconPlayerPause,
        width: 64,
        height: 64,
      ),
    );
  }
}
