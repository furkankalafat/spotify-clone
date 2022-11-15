import 'package:flutter/material.dart';
import '../../extension/string_localization.dart';

class LocaleText extends StatelessWidget {
  ///This widget automatically gives the language value of the current locale
  ///[forceUpperCased] default is false
  final String text;
  final Map<String, String>? namedArgs;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final bool forceUpperCased;
  const LocaleText(
    this.text, {
    this.namedArgs,
    Key? key,
    this.textStyle,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.forceUpperCased = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      forceUpperCased
          ? text.translate(namedArgs: namedArgs).toUpperCase()
          : text.translate(namedArgs: namedArgs),
      style: textStyle,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
