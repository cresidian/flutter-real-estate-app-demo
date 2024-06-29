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

  bool showNavBar = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1000));
      setState(() {
        showNavBar = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          mainScreenTabs[tabIndex],
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            bottom: showNavBar ? 0 : -200,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: Dimensions.materialPadding,
              ),
              child: UnconstrainedBox(
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
              ),
            ),
          )
        ],
      ),
    );
  }
}
