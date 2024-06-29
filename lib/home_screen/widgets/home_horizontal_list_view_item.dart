import 'dart:ui';

import 'package:design_system/design_system.dart';
import 'package:real_estate_app_demo/drawables.dart';

class HomeHorizontalListViewItem extends StatelessWidget {
  const HomeHorizontalListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(Drawables.propertyImage1),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: _buildButtonWidget(context),
      ),
    );
  }

  Widget _buildButtonWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        Dimensions.padding_12,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            color: context.colors.white.withOpacity(0.4),
            child: Row(
              children: [
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(
                    left: Dimensions.materialPadding,
                  ),
                  child: Text(
                    "Gladkova St, 25",
                    style: context.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_circle_right,
                  size: 50,
                  color: context.colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
