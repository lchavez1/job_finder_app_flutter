import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_finder/components//app_bar.dart';
import 'package:job_finder/components//job_carrusel.dart';
import 'package:job_finder/components/job_list.dart';

import '../models/company.dart';
import '../models/job.dart';

class MainScreen extends StatelessWidget{

  List<Job> for_you_jobs = [
    Job(
      'San Francisco, CA',
      'Product Designer',
      Company(
        'https://images.theconversation.com/files/93616/original/image-20150902-6700-t2axrz.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1000&fit=clip',
        'Google',
      )
    ),
    Job(
      'Miami',
      'Frontend Web',
     Company(
        'https://i.pinimg.com/originals/8c/74/0b/8c740bc13bd5a0a19c24d28dff98cbdd.png',
         'Netflix'
     ),
    ),
    Job(
      'New York',
      'Mobile Developer',
      Company(
        'https://www.frikko.com/wp-content/uploads/2019/03/amazon-logo-icon-png_44637.png',
        'Amazon'
  ),
    ),
  ];

  List<Job> recent_jobs = [
    Job(
      'Mountain View, CA',
      'UX Enginner',
      Company(
        'https://i.pinimg.com/originals/1c/aa/03/1caa032c47f63d50902b9d34492e1303.jpg',
        'Apple',
      ),
      isFavorite: true,
    ),
    Job(
      'New York, NY',
      'Motion Designer',
      Company(
        'https://menorcaaldia.com/wp-content/uploads/2018/02/air.jpg',
        'AirBnb',
      ),
      isFavorite: true,
    ),
    Job(
      'New York, NY',
      'Python Developer',
      Company(
        'https://www.frikko.com/wp-content/uploads/2019/03/amazon-logo-icon-png_44637.png',
        'Amazon',
      ),
      isFavorite: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // app bar
            CustomAppBar(),
            // head text
            Column(
              children: [
                Text(
                  'Hi Jade',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  'Find your next',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  'design job.',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
            SizedBox(height: 24,),
            // job carrusel
            Column(
              children: [
                Text(
                  'For you',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                JobCarrusel(for_you_jobs),
              ],
            ),
            SizedBox(height: 24,),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Recent',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        'See all',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: JobList(recent_jobs),
                ),
              ],
            ),
            SizedBox(height: 50),
          ],
        )
      ),
    );
  }

}