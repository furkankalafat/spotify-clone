import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_clone/presentation/app_components/widgets/clickable_container.dart';
import 'package:spotify_clone/presentation/app_ui/app_color/app_color.dart';

class BrowseItem extends StatelessWidget {
  final int index;
  const BrowseItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Color> colorList = [
      const Color(0xFFff8c66),
      const Color(0xFFffd966),
      const Color(0xFFce7e00),
      const Color(0xFFbe0032),
      const Color(0xFF9339ff),
      const Color(0xFF261150),
      const Color(0xFFff8c66),
      const Color(0xFFffd966),
      const Color(0xFFce7e00),
      const Color(0xFFbe0032),
      const Color(0xFF9339ff),
      const Color(0xFF261150),
      const Color(0xFFff8c66),
      const Color(0xFFffd966),
      const Color(0xFFce7e00),
      const Color(0xFFbe0032),
      const Color(0xFF9339ff),
      const Color(0xFF261150),
      const Color(0xFFff8c66),
      const Color(0xFFffd966),
      const Color(0xFFce7e00),
      const Color(0xFFbe0032),
      const Color(0xFF9339ff),
      const Color(0xFF261150),
      const Color(0xFFff8c66),
      const Color(0xFFffd966),
      const Color(0xFFce7e00),
      const Color(0xFFbe0032),
      const Color(0xFF9339ff),
      const Color(0xFF261150),
    ];
    final List<String> browseItemTitle = [
      "Podcasts",
      "Rock",
      "Chill",
      "Mood",
      "Workout",
      "Focus",
      "Pop",
      "Jazz",
      "Hip-Hop",
      "Podcasts",
      "Rock",
      "Chill",
      "Mood",
      "Workout",
      "Focus",
      "Pop",
      "Jazz",
      "Hip-Hop",
      "Podcasts",
      "Rock",
      "Chill",
      "Mood",
      "Workout",
      "Focus",
      "Pop",
      "Jazz",
      "Hip-Hop",
    ];
    return ClickableContainer(
      onTap: (() {}),
      child: Stack(
        children: [
          Container(
            width: 164.w,
            height: 88.h,
            decoration: BoxDecoration(
              color: colorList[index],
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      browseItemTitle[index],
                      style: GoogleFonts.openSans(
                        color: AppColor.instance.spotifyWhite,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: -10,
            bottom: -5,
            child: RotationTransition(
              turns: const AlwaysStoppedAnimation(30 / 360),
              child: Container(
                width: 68.w,
                height: 68.h,
                decoration:
                    BoxDecoration(color: AppColor.instance.spotifyWhite),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
