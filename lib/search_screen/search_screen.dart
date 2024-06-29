import 'package:design_system/design_system.dart';
import 'package:design_system/theme/constants/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_app_demo/home_screen/widgets/wallet_list.dart';
import 'package:real_estate_app_demo/search_screen/widgets/Search_text_field_widget.dart';
import 'package:real_estate_app_demo/search_screen/widgets/animated_location_widget.dart';
import 'package:real_estate_app_demo/search_screen/widgets/filled_icon_widget.dart';
import 'package:real_estate_app_demo/search_screen/widgets/google_maps_image_widget.dart';
import 'package:real_estate_app_demo/search_screen/widgets/icon_container_widget.dart';

import '../core/app/resources/strings.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool _isVisible = false;
  
  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        const GoogleMapsImageWidget(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimensions.materialPadding, vertical: Dimensions.materialPadding_3x),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Flexible(child: SearchTextField()),
              const SizedBox(
                width: Dimensions.materialPadding,
              ),
              Container(
                padding: const EdgeInsets.all(Dimensions.padding_12),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: const Icon(Icons.link_outlined),
              ),
            ],
          ),
        ),
        Visibility(
          visible: _isVisible,
          child: const Positioned(
              bottom: 230,
              left: Dimensions.materialPadding,
              right: Dimensions.materialPadding,child: WalletListWidget()),
        ),
        Positioned(
          left: Dimensions.materialPadding,
          right: Dimensions.padding_139,
          bottom: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: _toggleVisibility,
                    child: IconContainerWidget(
                        icon: SvgPicture.asset(
                          "assets/images/stack.svg",
                          height: Dimensions.padding_22,
                          width: Dimensions.padding_22,
                          color: Colors.white,
                        ),
                        color: Colors.grey[100]!.withOpacity(0.7),
                        padding: Dimensions.materialPadding),
                  ),
                  const SizedBox(
                    height: Dimensions.padding_4,
                  ),
                  IconContainerWidget(
                      icon: const Icon(
                        Icons.near_me_outlined,
                        color: Colors.white,
                      ),
                      color: Colors.grey[100]!.withOpacity(0.7),
                      padding: Dimensions.materialPadding),
                ],
              ),
              const FilledIconWidget(),
            ],
          ),
        ),
        const Positioned(
            top: 170,
            right: 250,
            child: AnimatedLocationPinWidget(
              duration: 3000,
              text: "10,3 mn",
            )),
        const Positioned(
            top: 240,
            right: 230,
            child: AnimatedLocationPinWidget(
              duration: 3200,
              text: "11 mn",
            )),
        const Positioned(
            top: 270,
            right: 70,
            child: AnimatedLocationPinWidget(
              duration: 3500,
              text: "7,8 mn",
            )),
        const Positioned(
            bottom: 300,
            right: 70,
            child: AnimatedLocationPinWidget(
              duration: 3700,
              text: "8,5 mn",
            )),
        const Positioned(
            bottom: 270,
            left: 100,
            child: AnimatedLocationPinWidget(
              duration: 3900, text: "13,3 mn",
            )),
        const Positioned(
            bottom: 200,
            right: 100,
            child: AnimatedLocationPinWidget(
              duration: 4100,
              text: "6,95 mn",
            )),
      ],
    );
  }
}
