import 'package:design_system/theme/theme.dart';

abstract class AppTextTheme {
  Color get color;

  TextStyle get fontTextStyle => TextStyle(
        fontFamily: GoogleFonts.lato().fontFamily,
        color: color,
        fontStyle: FontStyle.normal,
      );

  /// display

  TextStyle get displayLarge => fontTextStyle.copyWith(
        fontSize: 60.0,
        fontWeight: FontWeight.w700,
        height: 1.23333,
      );

  TextStyle get displayMedium => fontTextStyle.copyWith(
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
        height: 1.33333,
        letterSpacing: 0.3,
      );

  /// headline

  TextStyle get headlineLarge => fontTextStyle.copyWith(
        fontSize: 34,
        fontWeight: FontWeight.w700,
        height: 1.47058,
      );

  TextStyle get headlineMedium => fontTextStyle.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        height: 1.5,
      );

  TextStyle get headlineSmall => fontTextStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        height: 1.5,
      );

  /// title

  TextStyle get titleLarge => fontTextStyle.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        height: 1.25,
      );

  TextStyle get titleMedium => fontTextStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.5,
      );

  TextStyle get titleSmall => fontTextStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.5,
      );

  /// body

  TextStyle get bodyLarge => fontTextStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        height: 1.125,
      );

  TextStyle get bodyMedium => fontTextStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        height: 1.5,
      );

  TextStyle get bodySmall => fontTextStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.5,
      );

  /// label styles
  ///
  TextStyle get labelLarge => fontTextStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        height: 1.5,
      );

  TextStyle get labelSmall => fontTextStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.83333,
      );

  TextStyle get labelMedium => fontTextStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.5,
      );

  TextTheme get textThemeData => TextTheme(
        displayLarge: displayLarge,
        displayMedium: displayMedium,
        headlineLarge: headlineLarge,
        headlineMedium: headlineMedium,
        headlineSmall: headlineSmall,
        titleLarge: titleLarge,
        titleMedium: titleMedium,
        titleSmall: titleSmall,
        bodyLarge: bodyLarge,
        bodyMedium: bodyMedium,
        bodySmall: bodySmall,
        labelMedium: labelMedium,
        labelLarge: labelLarge,
        labelSmall: labelSmall,
      );
}

extension TextStyles on TextStyle {
  /// strike through
  TextStyle get strikeThrough =>
      copyWith(decoration: TextDecoration.lineThrough);

  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);

  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);

  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);

  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);

  TextStyle get underline => copyWith(
        decoration: TextDecoration.underline,
      );
}
