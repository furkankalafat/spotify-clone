import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_clone/presentation/app_components/widgets/clickable_container.dart';
import 'package:spotify_clone/presentation/app_ui/app_color/app_color.dart';
import 'package:spotify_clone/presentation/app_ui/locale_text/locale_text.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClickableContainer(
      onTap: (() {}),
      child: Container(
        width: 343.w,
        height: 40.h,
        decoration: BoxDecoration(
          color: AppColor.instance.spotifyWhite,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Row(
            children: [
              Icon(
                Icons.search,
                size: 24,
                color: AppColor.instance.spotifyDark,
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                LocaleText.instance.searchBarDescription,
                style: GoogleFonts.openSans(
                  fontSize: 12.sp,
                  color: AppColor.instance.spotifyDark,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
