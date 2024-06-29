import 'package:design_system/theme/dark/color_theme.dart';
import 'package:design_system/theme/dark/text_theme.dart';
import 'package:design_system/theme/theme.dart';

class DarkTheme extends AppTheme {
  @override
  AppTextTheme get textTheme => DarkTextTheme();

  @override
  AppColorsTheme get colorTheme => DarkColorTheme();
}
