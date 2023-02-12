import 'package:flutter/material.dart';

import 'package:personal_money_manager/core/constant.dart';
import 'package:personal_money_manager/theme/palette.dart';

class PMMStyle {
  static TextStyle titleStyle({
    double fontSize = 20,
    Color color = Palette.textHeading,
  }) {
    return TextStyle(
      fontFamily: kFontRaleway,
      fontWeight: FontWeight.bold,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle subTitleStyle({
    double fontSize = 16,
    Color color = Palette.black,
  }) {
    return TextStyle(
      fontFamily: kFontQuestrial,
      fontSize: fontSize,
      color: color,
    );
  }
}
