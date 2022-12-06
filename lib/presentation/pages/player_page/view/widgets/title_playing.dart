import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LocaleText(
                LocaleKeys.now_playing,
                maxLines: 2,
                textStyle: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp,
                ),
              ),
              LocaleText(
                LocaleKeys.now_playing,
                maxLines: 2,
                textStyle: GoogleFonts.openSans(
                  color: Colors.white70,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
        ),
        ClickableContainer(
          onTap: () {},
          child: AppAssetButton(
            path: AppImage.instance.iconHeartOutlined,
            width: 64.w,
            height: 64.h,
            color: AppColor.instance.spotifyWhite,
          ),
        )
      ],
    );
  }
}
