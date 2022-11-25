import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';

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
      barHeight: 4,
      thumbRadius: 5,
      timeLabelTextStyle: TextStyle(
        color: AppColor.instance.spotifyWhite,
      ),
      progress: Duration(milliseconds: 1000),
      total: Duration(milliseconds: 5000),
      onSeek: (duration) {
        debugPrint('User selected a new time: $duration');
      },
    );
  }
}
