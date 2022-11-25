import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/components/text/locale_text.dart';
import '../../../../../generated/locale_keys.g.dart';
import '../../../../app_components/widgets/app_asset_button.dart';
import '../../../../app_components/widgets/clickable_container.dart';
import '../../../../app_ui/app_color/app_color.dart';
import '../../../../app_ui/app_image/app_image.dart';

class TitlePlaying extends StatelessWidget {
  const TitlePlaying({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        LocaleText(
          LocaleKeys.now_playing,
          textStyle: GoogleFonts.openSans(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        ClickableContainer(
          onTap: () {},
          child: AppAssetButton(
            path: AppImage.instance.iconHeartOutlined,
            width: 64,
            height: 64,
            color: AppColor.instance.spotifyWhite,
          ),
        )
      ],
    );
  }
}
