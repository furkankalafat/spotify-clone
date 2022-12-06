import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app_components/widgets/app_asset_button.dart';
import '../../../../app_components/widgets/clickable_container.dart';
import '../../../../app_ui/app_color/app_color.dart';
import '../../../../app_ui/app_image/app_image.dart';

class PlayerControls extends StatelessWidget {
  const PlayerControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        AppAssetButton(path: AppImage.instance.iconShuffle, width: 64.w, height: 64.h, color: AppColor.instance.spotifyWhite),
        AppAssetButton(path: AppImage.instance.iconBack, width: 64.w, height: 64.h, color: AppColor.instance.spotifyWhite),
        ClickableContainer(
            onTap: () {
              debugPrint("Paused");
            },
            child: AppAssetButton(path: AppImage.instance.iconPause, width: 64.w, height: 64.h)),
        AppAssetButton(path: AppImage.instance.iconSkip, width: 64.w, height: 64.h, color: AppColor.instance.spotifyWhite),
        AppAssetButton(path: AppImage.instance.iconRepeat, width: 64.w, height: 64.h, color: AppColor.instance.spotifyWhite)
      ],
    );
  }
}
