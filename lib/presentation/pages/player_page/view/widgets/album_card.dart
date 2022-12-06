import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlbumCard extends StatelessWidget {
  const AlbumCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375.w,
      child: Image.asset(
        "assets/images/profile_photo.png",
      ),
    );
  }
}
