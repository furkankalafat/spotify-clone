import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget {
  final Widget? leading;
  final String text;
  final List<Widget> actions;
  const AppBarWidget({
    Key? key,
    this.leading,
    required this.text,
    required this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //leading and title
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            leading ?? const SizedBox(),
            SizedBox(
              width: 5.w,
            ),
            Text(
              text,
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
          ],
        ),
        //items
        Row(
          mainAxisSize: MainAxisSize.min,
          children: actions,
        ),
      ],
    );
  }
}
