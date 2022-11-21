import 'package:flutter/material.dart';
import 'package:spotify_clone/presentation/app_components/widgets/app_asset_button.dart';
import 'package:spotify_clone/presentation/app_ui/app_color/app_color.dart';
import 'package:spotify_clone/presentation/app_ui/app_image/app_image.dart';

class TopBarControls extends StatelessWidget {
  const TopBarControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AppAssetButton(path: AppImage.instance.iconDown, width: 64, height: 64, color: AppColor.instance.spotifyWhite),
        AppAssetButton(path: AppImage.instance.iconMenuDots, width: 64, height: 64, color: AppColor.instance.spotifyWhite),
      ],
    );
  }
}
