import 'package:flutter/material.dart';
import 'package:spotify_clone/presentation/app_components/widgets/app_asset_button.dart';
import 'package:spotify_clone/presentation/app_components/widgets/clickable_container.dart';
import 'package:spotify_clone/presentation/app_ui/app_color/app_color.dart';
import 'package:spotify_clone/presentation/app_ui/app_image/app_image.dart';

class PlayerControls extends StatelessWidget {
  const PlayerControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        AppAssetButton(path: AppImage.instance.iconPlayerShuffle, width: 64, height: 64, color: AppColor.instance.spotifyWhite),
        AppAssetButton(path: AppImage.instance.iconPlayerBack, width: 64, height: 64, color: AppColor.instance.spotifyWhite),
        ClickableContainer(
            onTap: () {},
            child: AppAssetButton(path: AppImage.instance.iconPlayerPause, width: 64, height: 64)
        ),
        AppAssetButton(path: AppImage.instance.iconPlayerSkip, width: 64, height: 64, color: AppColor.instance.spotifyWhite),
        AppAssetButton(path: AppImage.instance.iconRepeat, width: 64, height: 64, color: AppColor.instance.spotifyWhite)
      ],
    );
  }
}
