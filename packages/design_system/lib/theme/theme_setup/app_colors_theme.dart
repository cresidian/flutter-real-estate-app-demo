import 'package:design_system/theme/theme_setup/pm_colors.dart';
import 'package:flutter/material.dart';

abstract class AppColorsTheme {
  Brightness get brightness;

  /// primary
  Color get primary;

  /// secondary

  Color get secondary;

  /// auxiliary

  Color get auxiliary50;

  Color get auxiliary100;

  Color get auxiliary200;

  Color get auxiliary300;

  Color get auxiliary400;

  Color get auxiliary500;

  Color get auxiliary600;

  Color get auxiliary700;

  ///neutral

  Color get neutral50;

  Color get neutral100;

  Color get neutral200;

  Color get neutral300;

  Color get neutral400;

  Color get neutral500;

  Color get neutral600;

  Color get neutral700;

  /// error

  Color get error30;

  Color get error20;

  Color get error10;

  /// font

  Color get textGrey;

  Color get textLightGrey;

  Color get textWhite;

  /// general

  Color get black;

  Color get white;

  Color get warning;

  Color get success;

  Color get info;

  PMColor get appColors => PMColor(
        primary: primary,
        secondary: secondary,
        auxiliary50: auxiliary50,
        auxiliary100: auxiliary100,
        auxiliary200: auxiliary200,
        auxiliary300: auxiliary300,
        auxiliary400: auxiliary400,
        auxiliary500: auxiliary500,
        auxiliary600: auxiliary600,
        auxiliary700: auxiliary700,
        neutral50: neutral50,
        neutral100: neutral100,
        neutral200: neutral200,
        neutral300: neutral300,
        neutral400: neutral400,
        neutral500: neutral500,
        neutral600: neutral600,
        neutral700: neutral700,
        error30: error30,
        error20: error20,
        error10: error10,
        textGrey: textGrey,
        textLightGrey: textLightGrey,
        textWhite: textWhite,
        black: black,
        white: white,
        warning: warning,
        success: success,
        info: info,
      );

  ColorScheme get colorScheme => ColorScheme.fromSwatch(
        brightness: brightness,
        primarySwatch: MaterialColor(
          primary.value,
          <int, Color>{
            50: neutral50,
            100: neutral100,
            200: neutral200,
            300: neutral300,
            400: neutral400,
            500: neutral500,
            600: neutral600,
            00: neutral700,
          },
        ),
        accentColor: secondary,
        backgroundColor: white,
      );
}
