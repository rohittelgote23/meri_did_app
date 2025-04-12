import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageCarousel extends StatelessWidget {
  final List<String> imagePaths;
  final double height;
  final int seconds;
  const ImageCarousel({
    super.key,
    required this.imagePaths,
    this.height = 100,
    this.seconds = 3,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: height,
        autoPlay: true,
        enlargeCenterPage: true,
        // viewportFraction: 0,
        aspectRatio: 16 / 9,
        autoPlayInterval: Duration(seconds: seconds),
      ),
      items:
          imagePaths.map((imagePath) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            );
          }).toList(),
    );
  }
}
