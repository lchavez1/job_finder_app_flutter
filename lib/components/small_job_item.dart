import 'package:flutter/material.dart';
import 'package:job_finder/models/job.dart';

class SmallJobItem extends StatelessWidget{

  Job job;
  SmallJobItem(this.job);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      child: Container(
        decoration: decoration(),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image.network(this.job.company.logo),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      this.job.company.name,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      this.job.role,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Theme.of(context).highlightColor,
                          size: 14,
                        ),
                        SizedBox(width: 3),
                        Text(
                          this.job.location,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffb7b7d2)
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, right: 20),
              child: Icon(
                Icons.favorite_border,
                color: Theme.of(context).highlightColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration decoration(){
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          offset: Offset(2, 2),
          blurRadius: 8
        ),
      ]
    );
  }

}