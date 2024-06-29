import 'package:design_system/design_system.dart';
import 'package:design_system/theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_app_demo/drawables.dart';

class HomeAppBarLocationWidget extends StatelessWidget {
  const HomeAppBarLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(
            Dimensions.materialPadding,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                Drawables.locationPin,
                width: 20,
                colorFilter: ColorFilter.mode(
                    context.colors.auxiliary50, BlendMode.srcIn),
              ),
              const SizedBox(
                width: Dimensions.padding_6,
              ),
              Text(
                "Saint Petersburg",
                style: context.textTheme.titleMedium?.copyWith(
                    color: context.colors.auxiliary50,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        const Spacer(),
        const CircleAvatar(
          backgroundImage: AssetImage(Drawables.profileImage),
        )
      ],
    );
  }
}
