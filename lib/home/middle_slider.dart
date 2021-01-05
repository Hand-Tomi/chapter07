import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MiddleSlider extends StatelessWidget {
  final List<Widget> items;

  MiddleSlider({this.items});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150.0,
        autoPlay: true,
      ),
      items: items,
    );
  }
}
