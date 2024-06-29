import 'package:design_system/theme/dark/theme.dart';
import 'package:design_system/theme/light/theme.dart';
import 'package:design_system/theme/theme.dart';
import 'package:design_system/theme/theme_setup/pm_colors.dart';
import 'package:flutter/services.dart';

abstract class AppTheme {
  AppTextTheme get textTheme;

  AppColorsTheme get colorTheme;

  static ThemeData get lightTheme => baseTheme(LightTheme());

  static ThemeData get darkTheme => baseTheme(DarkTheme());

  static ThemeData baseTheme(AppTheme appTheme) => ThemeData(
        extensions: [
          appTheme.colorTheme.appColors,
        ],
        useMaterial3: true,
        textTheme: appTheme.textTheme.textThemeData,
        scaffoldBackgroundColor: appTheme.colorTheme.appColors.white,
        appBarTheme: AppBarTheme(
          toolbarHeight: Dimensions.appBarHeight,
          foregroundColor: appTheme.colorTheme.appColors.black,
          backgroundColor: appTheme.colorTheme.appColors.white,
          surfaceTintColor: appTheme.colorTheme.appColors.white,
          centerTitle: false,
          titleTextStyle: appTheme.textTheme.textThemeData.titleMedium,
          iconTheme: IconThemeData(
            color: appTheme.colorTheme.appColors.black,
            size: 24,
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarColor: appTheme.colorTheme.appColors.white,
            statusBarBrightness: Brightness.light,
            systemNavigationBarIconBrightness: Brightness.dark,
          ),
        ),
        datePickerTheme: DatePickerThemeData(
          surfaceTintColor: appTheme.colorTheme.appColors.primary,
          backgroundColor: appTheme.colorTheme.appColors.white,
          dividerColor: appTheme.colorTheme.appColors.neutral400,
          headerHelpStyle:
              appTheme.textTheme.textThemeData.labelLarge?.copyWith(
            color: appTheme.colorTheme.appColors.textGrey,
          ),
          headerHeadlineStyle: appTheme.textTheme.textThemeData.headlineLarge,
          cancelButtonStyle: ButtonStyle(
            textStyle: WidgetStateProperty.resolveWith<TextStyle>(
              (Set<WidgetState> states) =>
                  appTheme.textTheme.textThemeData.labelLarge!.copyWith(
                color: appTheme.colorTheme.appColors.primary,
              ),
            ),
            foregroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) =>
                  appTheme.colorTheme.appColors.primary,
            ),
          ),
          yearStyle: appTheme.textTheme.textThemeData.labelLarge?.copyWith(
            color: appTheme.colorTheme.appColors.primary,
          ),
          rangePickerHeaderHelpStyle:
              appTheme.textTheme.textThemeData.labelLarge?.copyWith(
            color: appTheme.colorTheme.appColors.primary,
          ),
          confirmButtonStyle: ButtonStyle(
            textStyle: WidgetStateProperty.resolveWith<TextStyle>(
              (Set<WidgetState> states) =>
                  appTheme.textTheme.textThemeData.labelLarge!.copyWith(
                color: appTheme.colorTheme.appColors.primary,
              ),
            ),
            foregroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) =>
                  appTheme.colorTheme.appColors.primary,
            ),
          ),
        ),
        dividerTheme: DividerThemeData(
          thickness: 1,
          space: 0,
          color: appTheme.colorTheme.appColors.neutral100,
        ),
        dialogTheme: DialogTheme(
          surfaceTintColor: appTheme.colorTheme.appColors.white,
        ),
        snackBarTheme: SnackBarThemeData(
          backgroundColor: appTheme.colorTheme.appColors.primary,
          behavior: SnackBarBehavior.floating,
        ),
        navigationBarTheme: NavigationBarThemeData(
          height: 66,
          surfaceTintColor: appTheme.colorTheme.appColors.primary,
          backgroundColor: appTheme.colorTheme.appColors.white,
          labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
            (Set<WidgetState> states) =>
                appTheme.textTheme.textThemeData.titleMedium!.copyWith(
              color: states.contains(WidgetState.selected)
                  ? appTheme.colorTheme.appColors.secondary
                  : appTheme.colorTheme.appColors.primary,
            ),
          ),
        ),
        colorScheme: appTheme.colorTheme.colorScheme,
      );
}

extension ThemeContext on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get defaultColorScheme => theme.colorScheme;

  PMColor get colors => theme.extension<PMColor>()!;

  TextTheme get textTheme => theme.textTheme;

  IconThemeData get iconTheme => theme.iconTheme;

  TargetPlatform get platform => theme.platform;
}

extension BrightnessX on Brightness {
  Brightness get inverse =>
      this == Brightness.dark ? Brightness.light : Brightness.dark;
}
