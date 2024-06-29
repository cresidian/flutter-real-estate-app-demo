import 'package:design_system/design_system.dart';

class PMColor extends ThemeExtension<PMColor> {
  PMColor({
    required this.primary,
    required this.secondary,
    required this.auxiliary50,
    required this.auxiliary100,
    required this.auxiliary200,
    required this.auxiliary300,
    required this.auxiliary400,
    required this.auxiliary500,
    required this.auxiliary600,
    required this.auxiliary700,
    required this.neutral50,
    required this.neutral100,
    required this.neutral200,
    required this.neutral300,
    required this.neutral400,
    required this.neutral500,
    required this.neutral600,
    required this.neutral700,
    required this.error10,
    required this.error20,
    required this.error30,
    required this.textGrey,
    required this.textLightGrey,
    required this.textWhite,
    required this.black,
    required this.white,
    required this.warning,
    required this.success,
    required this.info,
  });

  /// primary
  final Color primary;

  /// secondary

  final Color secondary;

  /// auxiliary

  final Color auxiliary50;
  final Color auxiliary100;
  final Color auxiliary200;
  final Color auxiliary300;
  final Color auxiliary400;
  final Color auxiliary500;
  final Color auxiliary600;
  final Color auxiliary700;

  ///neutral

  final Color neutral50;
  final Color neutral100;
  final Color neutral200;
  final Color neutral300;
  final Color neutral400;
  final Color neutral500;
  final Color neutral600;
  final Color neutral700;

  /// error

  final Color error30;
  final Color error20;
  final Color error10;

  /// font

  final Color textGrey;
  final Color textLightGrey;
  final Color textWhite;

  /// general

  final Color black;
  final Color white;
  final Color warning;
  final Color success;
  final Color info;

  @override
  ThemeExtension<PMColor> lerp(
      covariant ThemeExtension<PMColor>? other, double t) {
    if (other is PMColor) {
      return PMColor(
        primary: Color.lerp(primary, other.primary, t)!,
        secondary: Color.lerp(secondary, other.secondary, t)!,
        auxiliary50: Color.lerp(auxiliary50, other.auxiliary50, t)!,
        auxiliary100: Color.lerp(auxiliary100, other.auxiliary100, t)!,
        auxiliary200: Color.lerp(auxiliary200, other.auxiliary200, t)!,
        auxiliary300: Color.lerp(auxiliary300, other.auxiliary300, t)!,
        auxiliary400: Color.lerp(auxiliary400, other.auxiliary400, t)!,
        auxiliary500: Color.lerp(auxiliary500, other.auxiliary500, t)!,
        auxiliary600: Color.lerp(auxiliary600, other.auxiliary600, t)!,
        auxiliary700: Color.lerp(auxiliary700, other.auxiliary700, t)!,
        neutral50: Color.lerp(auxiliary50, other.auxiliary50, t)!,
        neutral100: Color.lerp(neutral100, other.neutral100, t)!,
        neutral200: Color.lerp(neutral200, other.neutral200, t)!,
        neutral300: Color.lerp(neutral300, other.neutral300, t)!,
        neutral400: Color.lerp(neutral400, other.neutral400, t)!,
        neutral500: Color.lerp(neutral500, other.neutral500, t)!,
        neutral600: Color.lerp(neutral600, other.neutral600, t)!,
        neutral700: Color.lerp(neutral700, other.neutral700, t)!,
        error10: Color.lerp(error10, other.error10, t)!,
        error20: Color.lerp(error20, other.error20, t)!,
        error30: Color.lerp(error30, other.error30, t)!,
        textGrey: Color.lerp(textGrey, other.textGrey, t)!,
        textLightGrey: Color.lerp(textLightGrey, other.textLightGrey, t)!,
        textWhite: Color.lerp(textWhite, other.textWhite, t)!,
        black: Color.lerp(black, other.black, t)!,
        white: Color.lerp(white, other.white, t)!,
        warning: Color.lerp(warning, other.warning, t)!,
        success: Color.lerp(success, other.success, t)!,
        info: Color.lerp(info, other.info, t)!,
      );
    }
    return this;
  }

  @override
  ThemeExtension<PMColor> copyWith({
    Color? primary,
    Color? secondary,
    Color? auxiliary50,
    Color? auxiliary100,
    Color? auxiliary200,
    Color? auxiliary300,
    Color? auxiliary400,
    Color? auxiliary500,
    Color? auxiliary600,
    Color? auxiliary700,
    Color? neutral50,
    Color? neutral100,
    Color? neutral200,
    Color? neutral300,
    Color? neutral400,
    Color? neutral500,
    Color? neutral600,
    Color? neutral700,
    Color? error10,
    Color? error20,
    Color? error30,
    Color? textGrey,
    Color? textLightGrey,
    Color? textWhite,
    Color? black,
    Color? white,
    Color? warning,
    Color? success,
    Color? info,
  }) {
    return PMColor(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      auxiliary50: auxiliary50 ?? this.auxiliary50,
      auxiliary100: auxiliary100 ?? this.auxiliary100,
      auxiliary200: auxiliary200 ?? this.auxiliary200,
      auxiliary300: auxiliary300 ?? this.auxiliary300,
      auxiliary400: auxiliary400 ?? this.auxiliary400,
      auxiliary500: auxiliary500 ?? this.auxiliary500,
      auxiliary600: auxiliary600 ?? this.auxiliary600,
      auxiliary700: auxiliary700 ?? this.auxiliary700,
      neutral50: neutral50 ?? this.neutral50,
      neutral100: neutral100 ?? this.neutral100,
      neutral200: neutral200 ?? this.neutral200,
      neutral300: neutral300 ?? this.neutral300,
      neutral400: neutral400 ?? this.neutral400,
      neutral500: neutral500 ?? this.neutral500,
      neutral600: neutral600 ?? this.neutral600,
      neutral700: neutral700 ?? this.neutral700,
      error30: error30 ?? this.error30,
      error20: error20 ?? this.error20,
      error10: error10 ?? this.error10,
      textGrey: textGrey ?? this.textGrey,
      textLightGrey: textLightGrey ?? this.textLightGrey,
      textWhite: textWhite ?? this.textWhite,
      black: black ?? this.black,
      white: white ?? this.white,
      warning: warning ?? this.warning,
      success: success ?? this.success,
      info: info ?? this.info,
    );
  }
}
