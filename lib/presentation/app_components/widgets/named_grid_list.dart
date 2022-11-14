import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NamedGridList extends StatelessWidget {
  final Widget? child;
  final String? text;

  const NamedGridList({
    Key? key,
    this.child,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            text ?? "",
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        SizedBox(
          width: double.infinity,
          child: child,
        ),
      ],
    );
  }
}
