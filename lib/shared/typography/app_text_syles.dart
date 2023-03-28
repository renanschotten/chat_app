import 'package:flutter/material.dart';

import 'package:chat_app/shared/colors/app_colors.dart';

class AppTextStyles {
  const AppTextStyles({required this.colors});
  final AppColors colors;

  static const FontWeight bold = FontWeight.w700;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight regular = FontWeight.w400;
  static const String roboto = 'Roboto';

  TextStyle captionBold({Color? color}) => TextStyle(
        fontFamily: roboto,
        fontWeight: bold,
        fontSize: 10,
        height: 1.17,
        color: color ?? colors.black,
      );

  TextStyle footnote({Color? color}) => TextStyle(
        fontFamily: roboto,
        fontWeight: regular,
        fontSize: 12,
        height: 1.17,
        color: color ?? colors.black,
      );

  TextStyle footnoteBold({Color? color}) => TextStyle(
        fontFamily: roboto,
        fontWeight: medium,
        fontSize: 12,
        height: 1.0,
        color: color ?? colors.black,
      );
  TextStyle body({Color? color}) => TextStyle(
        fontFamily: roboto,
        fontWeight: medium,
        fontSize: 14,
        height: 1.17,
        color: color ?? colors.black,
      );

  TextStyle bodyBold({Color? color}) => TextStyle(
        fontFamily: roboto,
        fontWeight: bold,
        fontSize: 14,
        height: 1.17,
        color: color ?? colors.black,
      );

  TextStyle headline({Color? color}) => TextStyle(
        fontFamily: roboto,
        fontWeight: medium,
        fontSize: 16,
        height: 1.17,
        color: color ?? colors.black,
      );

  TextStyle headlineBold({Color? color}) => TextStyle(
        fontFamily: roboto,
        fontWeight: bold,
        fontSize: 16,
        height: 1.17,
        color: color ?? colors.black,
      );

  TextStyle title({Color? color}) => TextStyle(
        fontFamily: roboto,
        fontWeight: bold,
        fontSize: 22,
        height: 1.17,
        color: color ?? colors.black,
      );
}
