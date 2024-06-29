import 'package:flutter/material.dart';

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
                "assets/images/google_maps_with_name.jpg",
              ),
              fit: BoxFit.cover)),
    );
  }
}
