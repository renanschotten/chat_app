import 'package:flutter/material.dart';

import 'package:chat_app/shared/colors/app_colors.dart';

class AppTextStyles {
  const AppTextStyles({required this.colors});
  final AppColors colors;

  static const FontWeight bold = FontWeight.w700;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight regular = FontWeight.w400;
  static const String roboto = 'Roboto';

  TextStyle get captionBold => TextStyle(
        fontFamily: roboto,
        fontWeight: bold,
        fontSize: 10,
        height: 1.17,
        color: colors.black,
      );

  TextStyle get footnote => TextStyle(
        fontFamily: roboto,
        fontWeight: regular,
        fontSize: 12,
        height: 1.17,
        color: colors.black,
      );

  TextStyle get footnoteBold => TextStyle(
        fontFamily: roboto,
        fontWeight: medium,
        fontSize: 12,
        height: 1.0,
        color: colors.black,
      );
  TextStyle get body => TextStyle(
        fontFamily: roboto,
        fontWeight: medium,
        fontSize: 14,
        height: 1.17,
        color: colors.black,
      );

  TextStyle get bodyBold => TextStyle(
        fontFamily: roboto,
        fontWeight: bold,
        fontSize: 14,
        height: 1.17,
        color: colors.black,
      );

  TextStyle get headline => TextStyle(
        fontFamily: roboto,
        fontWeight: medium,
        fontSize: 16,
        height: 1.17,
        color: colors.black,
      );

  TextStyle get headlineBold => TextStyle(
        fontFamily: roboto,
        fontWeight: bold,
        fontSize: 16,
        height: 1.17,
        color: colors.black,
      );

  TextStyle get title => TextStyle(
        fontFamily: roboto,
        fontWeight: bold,
        fontSize: 22,
        height: 1.17,
        color: colors.black,
      );
}
