import 'package:flutter/material.dart';

class JobItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, bottom: 20, top: 20),
      child: Container(
        decoration: itemBoxDecoration(context),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/5968/5968764.png',
                      width: 60,),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ],
              ),
              texts(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget texts(context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Facebook',
        style: TextStyle(
          fontSize: 15,
          color: Color(0xffb7b7d2)
        ),
      ),
      Text(
        'Front-end Developer',
        style: Theme.of(context).textTheme.headline3,
      ),
      SizedBox(height: 8,),
      Row(
        children: [
          Icon(
            Icons.location_on_outlined,
            size: 15,
          ),
          SizedBox(width: 5,),
          Text(
            'San Francisco, CA',
            style: TextStyle(
              fontSize: 15,
              color: Color(0xffb7b7d2)
            ),
          ),
        ],
      ),
    ],
  );
}

BoxDecoration itemBoxDecoration(BuildContext context){
  return BoxDecoration(
    color: Theme.of(context).primaryColor,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        offset: Offset(4, 4),
        blurRadius: 10,
      ),
    ]
  );
}