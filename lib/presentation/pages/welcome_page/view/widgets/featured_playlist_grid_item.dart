import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_clone/presentation/app_ui/app_color/app_color.dart';

import '../../../../app_components/widgets/clickable_container.dart';

class FeaturedPlaylistGridItem extends StatelessWidget {
  final String? title;
  final String? subTitle;
  const FeaturedPlaylistGridItem({
    Key? key,
    this.title,
    this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClickableContainer(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Image.asset(
              "assets/images/profile_photo.png",
              width: 152.w,
              height: 152.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            title ?? "",
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.bold,
              fontSize: 10.sp,
              color: AppColor.instance.spotifyWhite,
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            subTitle ?? "",
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.w500,
              fontSize: 10.sp,
              color: AppColor.instance.lightGrey,
            ),
          ),
        ],
      ),
    );
  }
}
