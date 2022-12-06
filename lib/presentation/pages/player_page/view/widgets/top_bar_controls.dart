import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/components/text/locale_text.dart';
import '../../../../../generated/locale_keys.g.dart';
import '../../../../app_components/widgets/app_asset_button.dart';
import '../../../../app_components/widgets/clickable_container.dart';
import '../../../../app_ui/app_color/app_color.dart';
import '../../../../app_ui/app_image/app_image.dart';

class TopBarControls extends StatelessWidget {
  const TopBarControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        AppAssetButton(path: AppImage.instance.iconDown, width: 64, height: 64, color: AppColor.instance.spotifyWhite),
        LocaleText(
          LocaleKeys.now_playing,
          textStyle: GoogleFonts.openSans(
            color: AppColor.instance.spotifyWhite,
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,
          ),
        ),
        ClickableContainer(
          onTap: () {},
          child: AppAssetButton(
            path: AppImage.instance.iconMenuDots,
            width: 64.w,
            height: 64.h,
            color: AppColor.instance.spotifyWhite,
          ),
        ),
      ],
    );
  }
}
