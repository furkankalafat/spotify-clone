import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app_components/widgets/app_asset_button.dart';
import '../../../../app_ui/app_color/app_color.dart';
import '../../../../app_ui/app_image/app_image.dart';

class BottomControls extends StatelessWidget {
  const BottomControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        AppAssetButton(path: AppImage.instance.iconDevices, width: 64.w, height: 64.h, color: AppColor.instance.spotifyWhite),
        AppAssetButton(path: AppImage.instance.iconListPlaying, width: 64.w, height: 64.h, color: AppColor.instance.spotifyWhite)
      ],
    );
  }
}
