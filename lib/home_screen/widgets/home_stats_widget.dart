import 'package:animated_number/animated_number.dart';
import 'package:design_system/design_system.dart';

class HomeStatsWidget extends StatelessWidget {
  const HomeStatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 180,
          height: 180,
          decoration: BoxDecoration(
            color: context.colors.primary,
            borderRadius: BorderRadius.circular(100),
          ),
          child: _buildStatsTextWidget(
            context,
            'BUY',
            '1034',
            'offers',
            context.colors.white,
          ),
        ),
        Container(
          width: 180,
          height: 180,
          decoration: BoxDecoration(
            color: context.colors.auxiliary100,
            borderRadius: BorderRadius.circular(20),
          ),
          child: _buildStatsTextWidget(
            context,
            'RENT',
            '2212',
            'offers',
            context.colors.auxiliary50,
          ),
        ),
      ],
    );
  }

  Widget _buildStatsTextWidget(BuildContext context, String title, String count,
      String substring, Color textColor) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: Dimensions.materialPadding,
            bottom: Dimensions.padding_20,
          ),
          child: Text(title,
              style: context.textTheme.labelMedium?.copyWith(
                color: textColor,
                fontWeight: FontWeight.w100,
              )),
        ),
        AnimatedNumber(
          startValue: 0,
          endValue: int.parse(count),
          duration: const Duration(seconds: 2),
          isFloatingPoint: false,
          style: context.textTheme.headlineLarge?.copyWith(
            fontSize: 40,
            fontWeight: FontWeight.w700,
            color: textColor,
            height: 1.2,
          ),
        ),
        Text(
          substring,
          style: context.textTheme.labelMedium?.copyWith(
            color: textColor,
          ),
        ),
      ],
    );
  }
}
