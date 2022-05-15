import 'package:flutter/material.dart';
import 'package:job_finder/utils/app_bar.dart';
import 'package:job_finder/utils/job_carrusel.dart';

class MainScreen extends StatelessWidget{
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
                JobCarrusel(),
              ],
            ),
          ],
        )
      ),
    );
  }

}