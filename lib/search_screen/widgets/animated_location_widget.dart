import 'dart:async';

import 'package:flutter/material.dart';


class AnimatedLocationPinWidget extends StatefulWidget {
  const AnimatedLocationPinWidget({super.key, required this.duration, required this.text});
  final int duration;
  final String text;

  @override
  _AnimatedLocationPinWidgetState createState() => _AnimatedLocationPinWidgetState();
}

class _AnimatedLocationPinWidgetState extends State<AnimatedLocationPinWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool showText = true;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Start the animation after the specified duration
    Timer(Duration(milliseconds: widget.duration), () {
      _controller.forward();
    });

    // Change from text to icon after the animation duration plus an additional delay
    Timer(Duration(milliseconds: widget.duration + 1500), () {
      setState(() {
        showText = false;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Container(
            padding: const EdgeInsets.all(16.0), // Replace with Dimensions.materialPadding
            decoration: BoxDecoration(
              color: _animation.value > 0.0 ? Theme.of(context).primaryColor : Colors.transparent,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomLeft: Radius.zero,
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: AnimatedOpacity(
              opacity: _animation.value,
              duration: const Duration(milliseconds: 500),
              child: showText
                  ? const Text(
                '13,3mn',
                style: TextStyle(color: Colors.white, fontSize: 18),
              )
                  : FadeTransition(
                opacity: _controller,
                child: const Icon(Icons.location_city, color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}