import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_clone/generated/locale_keys.g.dart';
import 'package:spotify_clone/presentation/app_components/widgets/clickable_container.dart';
import 'package:spotify_clone/presentation/app_ui/app_color/app_color.dart';
import '../../../../../core/components/text/locale_text.dart';

class UserPlaylistGridItem extends StatelessWidget {
  const UserPlaylistGridItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClickableContainer(
      onTap: (() {}),
      child: Container(
        width: 167.w,
        decoration: BoxDecoration(
            color: AppColor.instance.darkGrey,
            borderRadius: BorderRadius.circular(4.r)),
        child: Row(
          children: [
            SizedBox(
              width: 56.w,
              child: Image.asset(
                "assets/images/profile_photo.png",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 8, top: 14, bottom: 14, right: 16),
              child: Text(
                "Reathe Main",
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 10.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
