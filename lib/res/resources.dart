import 'package:clean_arch_app/res/strings/brazilian_portuguese_strings.dart';
import 'package:clean_arch_app/res/strings/english_strings.dart';
import 'package:clean_arch_app/res/strings/strings.dart';
import 'package:flutter/cupertino.dart';

import '/res/colors/app_colors.dart';

class Resources {
  final BuildContext _context;

  Resources(this._context);

  Strings get strings {
    Locale locale = Localizations.localeOf(_context);
    switch (locale.languageCode) {
      case 'pt-BR':
        return BrazilianPortugueseStrings();
      // English is the default language
      default:
        return EnglishStrings();
    }
  }

  AppColors get color {
    return AppColors();
  }

  static Resources of(BuildContext context) {
    return Resources(context);
  }
}
