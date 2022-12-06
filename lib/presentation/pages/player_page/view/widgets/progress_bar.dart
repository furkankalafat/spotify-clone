import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../app_ui/app_color/app_color.dart';

class AudioProgressBar extends StatefulWidget {
  const AudioProgressBar({Key? key}) : super(key: key);

  @override
  State<AudioProgressBar> createState() => _AudioProgressBarState();
}

class _AudioProgressBarState extends State<AudioProgressBar> {
  @override
  Widget build(BuildContext context) {
    return ProgressBar(
      progressBarColor: AppColor.instance.spotifyWhite,
      baseBarColor: Colors.grey,
      thumbColor: AppColor.instance.spotifyWhite,
      barHeight: 5,
      thumbRadius: 8,
      timeLabelTextStyle: GoogleFonts.openSans(
        color: AppColor.instance.spotifyWhite,
        fontWeight: FontWeight.w700,
        fontSize: 12.sp,
      ),
      timeLabelPadding: 10,
      progress: Duration(milliseconds: 1000),
      total: Duration(milliseconds: 5000),
      onSeek: (duration) {
        debugPrint('User selected a new time: $duration');
      },
    );
  }
}
