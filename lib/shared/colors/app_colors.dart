import 'package:flutter/material.dart';

abstract class AppColors {
  Color get black;
  Color get grey;
  Color get greyGainsboro;
  Color get greyWhisper;
  Color get whiteSmoke;
  Color get whiteSnow;
  Color get white;
  Color get blueAlice;
  Color get accentBlue;
  Color get accentRed;
  Color get accentGreen;
  Gradient get bgGradient;
  Color get overlay;
  Color get overlayDark;
  Color get buttonText;
  Color get buttonBackground;
}

class LightThemeColors implements AppColors {
  @override
  Color get black => const Color(0xFF000000);

  @override
  Color get grey => const Color(0xFF7A7A7A);

  @override
  Color get greyGainsboro => const Color(0xFFDBDBDB);

  @override
  Color get greyWhisper => const Color(0xFFECEBEB);

  @override
  Color get whiteSmoke => const Color(0xFFF2F2F2);

  @override
  Color get whiteSnow => const Color(0xFFFCFCFC);

  @override
  Color get white => const Color(0xFFFFFFFF);

  @override
  Color get blueAlice => const Color(0xFFE9F2FF);

  @override
  Color get accentBlue => const Color(0xFF005FFF);

  @override
  Color get accentRed => const Color(0xFFFF3742);

  @override
  Color get accentGreen => const Color(0xFF20E070);

  @override
  Gradient get bgGradient => const LinearGradient(
        colors: [
          Color(0xFFF7F7F7),
          Color(0xFFFCFCFC),
        ],
      );

  @override
  Color get overlay => const Color(0xFFCCCCCC);

  @override
  Color get overlayDark => const Color(0xFF666666);

  @override
  Color get buttonText => const Color(0xFFFFFFFF);

  @override
  Color get buttonBackground => const Color(0xFF005FFF);
}
