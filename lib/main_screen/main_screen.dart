import 'package:design_system/design_system.dart';
import 'package:real_estate_app_demo/home_screen/home_screen.dart';
import 'package:real_estate_app_demo/search_screen/search_screen.dart';

import '../home_screen/widgets/custom_bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> mainScreenTabs = const [
    SearchScreen(),
    HomeScreen(),
  ];
  int tabIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          mainScreenTabs[tabIndex],
          Padding(
            padding: const EdgeInsets.only(
              bottom: Dimensions.materialPadding,
            ),
            child: CustomBottomNavBar(
              onTabChanged: (index) {
                setState(() {
                  if (index == 0) {
                    tabIndex = index;
                  } else if (index == 2) {
                    tabIndex = 1;
                  }
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
