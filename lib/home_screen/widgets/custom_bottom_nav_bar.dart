import 'package:design_system/design_system.dart';
import 'package:design_system/theme/theme.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    super.key,
    this.onTabChanged,
  });

  final Function(int index)? onTabChanged;

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  final tabs = [
    Icons.search,
    Icons.chat,
    Icons.home_rounded,
    Icons.favorite,
    Icons.person,
  ];

  int selectedTab = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.all(
        Dimensions.padding_6,
      ),
      decoration: BoxDecoration(
        color: context.colors.neutral600,
        borderRadius: BorderRadius.circular(60),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(tabs.length, (index) {
          return NavBarItem(
            index: index,
            icon: tabs[index],
            isSelected: selectedTab == index,
            onSelected: (index) {
              setState(() {
                selectedTab = index;
                widget.onTabChanged?.call(selectedTab);
              });
            },
          );
        }),
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  NavBarItem({
    super.key,
    required this.index,
    required this.icon,
    this.onSelected,
    this.isSelected = false,
  });

  final int index;
  final IconData icon;
  bool isSelected;
  final Function(int index)? onSelected;

  @override
  Widget build(BuildContext context) {
    final size = isSelected ? 55.0 : 40.0;
    return InkWell(
      onTap: () {
        onSelected?.call(index);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.symmetric(horizontal: Dimensions.padding_4),
        width: size,
        height: size,
        decoration: BoxDecoration(
          color:
              isSelected ? context.colors.primary : context.colors.neutral700,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: context.colors.white,
        ),
      ),
    );
  }
}
