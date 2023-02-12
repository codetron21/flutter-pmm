
import 'package:flutter/material.dart';
import 'package:personal_money_manager/core/constant.dart';
import 'package:personal_money_manager/theme/palette.dart';

class PMMTheme {
  static ThemeData theme(BuildContext context) {
    final theme = Theme.of(context);
    
    return ThemeData(
      scaffoldBackgroundColor: Palette.background,
      fontFamily: kFontRaleway
    );
  }
}