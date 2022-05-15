import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:job_finder/models/job_item.dart';

class JobCarrusel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        JobItem(),
        JobItem(),
        JobItem(),
      ],
      options: CarouselOptions(
        enableInfiniteScroll: false,
        reverse: false,
        viewportFraction: 0.86,
        height: 230,
      ),
    );
  }

}