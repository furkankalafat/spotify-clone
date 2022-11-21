import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_clone/core/components/text/locale_text.dart';
import 'package:spotify_clone/generated/locale_keys.g.dart';

class TitlePlaying extends StatelessWidget {
  const TitlePlaying({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.all(20),
            child: LocaleText(
              LocaleKeys.now_playing,
              textStyle: GoogleFonts.openSans(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            )
        ),
      ],
    );
  }
}
