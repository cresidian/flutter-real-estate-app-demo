import 'package:flutter/material.dart';
import 'package:real_estate_app_demo/drawables.dart';

class GoogleMapsImageWidget extends StatelessWidget {
  const GoogleMapsImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage(
                Drawables.googleMapsBg,
              ),
              fit: BoxFit.cover)),
    );
  }
}
