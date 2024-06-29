import 'package:design_system/theme/constants/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconContainerWidget extends StatelessWidget {
  const IconContainerWidget({super.key, required this.icon, required this.color, required this.padding});

  final Widget icon;
  final Color color;
  final double padding;


  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color),
      child:icon,
    );
  }
}
