import 'package:flutter/material.dart';

import '../../../../../app_components/widgets/app_image_widget.dart';
import '../../../../../app_ui/app_color/app_color.dart';
import '../../../../../app_ui/app_image/app_image.dart';

class PlayerBack extends StatelessWidget {
  const PlayerBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppImageWidget(
      name: AppImage.instance.iconPlayerBack,
      width: 64,
      height: 64,
      color: AppColor.instance.spotifyWhite,
    );
  }
}
