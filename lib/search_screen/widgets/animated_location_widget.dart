import 'dart:async';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

final showLocationIconNotifier = ValueNotifier<bool>(false);

class AnimatedLocationPinWidget extends StatefulWidget {
  const AnimatedLocationPinWidget(
      {super.key, required this.duration, required this.text});

  final int duration;
  final String text;

  @override
  _AnimatedLocationPinWidgetState createState() =>
      _AnimatedLocationPinWidgetState();
}

class _AnimatedLocationPinWidgetState extends State<AnimatedLocationPinWidget>
    with SingleTickerProviderStateMixin {
  bool showLocationIcon = false;
  var containerHeight = 0.0;
  var containerWidth = 0.0;
  var opacity = 0.0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1000));
      setState(() {
        containerHeight = 50.0;
        containerWidth = 80.0;
        opacity = 1.0;
      });
      showLocationIconNotifier.addListener(() {
        setState(() {
          containerWidth = 50.0;
          showLocationIcon = true;
        });
      });
      // await Future.delayed(const Duration(milliseconds: 1500));
      // setState(() {
      //   containerWidth = 50.0;
      //   showLocationIcon = true;
      // });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        height: containerHeight,
        width: containerWidth,
        duration: const Duration(milliseconds: 800),
        decoration: BoxDecoration(
          color: context.colors.primary,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.zero,
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
        child: Center(
          child: showLocationIcon
              ? const Icon(Icons.location_city, color: Colors.white)
              : AnimatedOpacity(
                  opacity: opacity,
                  duration: const Duration(milliseconds: 2000),
                  child: Text(
                    '13,3mn',
                    style: context.textTheme.labelMedium?.copyWith(
                      color: context.colors.white,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
