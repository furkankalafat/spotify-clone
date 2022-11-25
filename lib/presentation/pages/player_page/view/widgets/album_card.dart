import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlbumCard extends StatelessWidget {
  const AlbumCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 512.w,
      height: 375.h,
      child: Image.asset(
        "assets/images/profile_photo.png",
      ),
    );
  }
}
