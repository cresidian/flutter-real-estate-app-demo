import 'package:design_system/theme/light/color_theme.dart';
import 'package:design_system/theme/light/text_theme.dart';
import 'package:design_system/theme/theme.dart';

class LightTheme extends AppTheme {
  @override
  AppTextTheme get textTheme => LightTextTheme();

  @override
  AppColorsTheme get colorTheme => LightColorTheme();
}
