import 'package:design_system/design_system.dart';
import 'package:design_system/theme/theme.dart';
import 'package:real_estate_app_demo/home_screen/widgets/custom_bottom_nav_bar.dart';
import '../property.dart';
import 'widgets/home_appbar_location_widget.dart';
import 'widgets/home_grid_view_item.dart';
import 'widgets/home_horizontal_list_view_item.dart';
import 'widgets/home_stats_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                context.colors.auxiliary100,
                context.colors.secondary,
              ],
            ),
          ),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                title: const HomeAppBarLocationWidget(),
                forceMaterialTransparency: true,
                pinned: true,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.only(
                    right: Dimensions.materialPadding,
                    left: Dimensions.materialPadding,
                    top: Dimensions.padding_100,
                  ),
                  child: _buildGreetingsWidget(),
                ),
                expandedHeight: 200,
              ),
              SliverList.list(
                children: [
                  const HomeStatsWidget(),
                  const SizedBox(
                    height: Dimensions.padding_12,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: context.colors.white,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                    margin: const EdgeInsets.only(
                      top: Dimensions.materialPadding,
                    ),
                    padding: const EdgeInsets.all(
                      Dimensions.padding_6,
                    ),
                    child: const HomeHorizontalListViewItem(),
                  ),
                  Container(
                    color: context.colors.white,
                    child: GridView.count(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Dimensions.padding_6,
                      ),
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      mainAxisSpacing: Dimensions.padding_8,
                      crossAxisSpacing: Dimensions.padding_8,
                      children: <Widget>[
                        ...List.generate(8, (index) {
                          return HomeGridViewItem(dummyProperties[index]);
                        })
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),

      ],
    );
  }

  Widget _buildGreetingsWidget() {
    return RichText(
      text: TextSpan(
        text: 'Hi, Marina\n',
        style: context.textTheme.headlineMedium?.copyWith(
          color: context.colors.auxiliary50,
          fontWeight: FontWeight.w100,
        ),
        children: <TextSpan>[
          TextSpan(
            text: 'let\'s select your\nperfect place',
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w100,
            ),
          ),
        ],
      ),
    );
  }
}
