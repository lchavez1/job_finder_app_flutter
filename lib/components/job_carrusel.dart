import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:job_finder/components/job_item.dart';
import 'package:job_finder/models/job.dart';


class JobCarrusel extends StatelessWidget{

  List<Job> jobs;
  JobCarrusel(this.jobs);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: this.jobs.map((e) => JobItem(e, darkTheme: this.jobs.indexOf(e).isEven)).toList(),
      options: CarouselOptions(
        enableInfiniteScroll: false,
        reverse: false,
        viewportFraction: 0.86,
        height: 230,
      ),
    );
  }

}