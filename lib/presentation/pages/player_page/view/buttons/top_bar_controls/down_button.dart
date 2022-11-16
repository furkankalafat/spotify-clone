import 'package:flutter/material.dart';

import '../../../../../app_components/widgets/app_image_widget.dart';
import '../../../../../app_ui/app_color/app_color.dart';
import '../../../../../app_ui/app_image/app_image.dart';

class DownButton extends StatelessWidget {
  const DownButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppImageWidget(
      name: AppImage.instance.iconDown,
      width: 64,
      height: 64,
      color: AppColor.instance.spotifyWhite,
    );
  }
}
