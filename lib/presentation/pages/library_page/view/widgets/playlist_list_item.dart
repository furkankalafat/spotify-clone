import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_clone/core/components/text/locale_text.dart';
import 'package:spotify_clone/presentation/app_ui/app_color/app_color.dart';

class PlaylistListItem extends StatelessWidget {
  final String title;
  final String subTitle;
  const PlaylistListItem({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: Image.asset(
            "assets/images/profile_photo.png",
            width: 90.w,
            height: 90.h,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 15.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.openSans(
                color: AppColor.instance.spotifyWhite,
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
              ),
            ),
            Text(
              subTitle,
              style: GoogleFonts.openSans(
                color: AppColor.instance.lightGrey,
                fontWeight: FontWeight.w500,
                fontSize: 10.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
