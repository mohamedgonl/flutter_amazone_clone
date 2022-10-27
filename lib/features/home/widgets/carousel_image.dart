import 'package:amazone_clone/constants/global_variables.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselImage extends StatefulWidget {
  const CarouselImage({super.key});

  @override
  State<CarouselImage> createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: GlobalVariable.carouselImages
          .map((e) => Builder(
                builder: (context) => Image.network(
                  e,
                  fit: BoxFit.cover,
                  height: 200,
                ),
              ))
          .toList(),
      options:
          CarouselOptions(viewportFraction: 1, height: 200, autoPlay: true),
    );
  }
}
