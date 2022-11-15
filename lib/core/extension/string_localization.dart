import 'package:easy_localization/easy_localization.dart';

extension StringLocalization on String {
  String translate({Map<String, String>? namedArgs}) {
    return this.tr(namedArgs: namedArgs);
  }
}
