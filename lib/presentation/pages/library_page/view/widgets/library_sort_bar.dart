import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_clone/core/components/text/locale_text.dart';
import 'package:spotify_clone/presentation/app_components/widgets/app_asset_button.dart';
import 'package:spotify_clone/presentation/app_components/widgets/app_image_widget.dart';
import 'package:spotify_clone/presentation/app_components/widgets/simple_button.dart';
import 'package:spotify_clone/presentation/app_ui/app_color/app_color.dart';

import '../../../../../generated/locale_keys.g.dart';
import '../../../../app_ui/app_image/app_image.dart';

class LibrarySortBar extends StatelessWidget {
  const LibrarySortBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SimpleButton(
          onTap: (() {}),
          child: Row(
            children: [
              AppImageWidget(
                  name: AppImage.instance.iconFilter, height: 24, width: 24),
              SizedBox(width: 6.w),
              LocaleText(
                LocaleKeys.recently_played,
                textStyle: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 10.sp,
                  color: AppColor.instance.lightGrey,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        AppAssetButton(
            path: AppImage.instance.iconGridLayout, width: 24, height: 24),
      ],
    );
  }
}
