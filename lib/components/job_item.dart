import 'package:flutter/material.dart';

import '../models/job.dart';

class JobItem extends StatefulWidget{

  Job job;
  bool darkTheme;

  JobItem(this.job, {this.darkTheme = false});

  @override
  State<JobItem> createState() => _JobItemState();
}

class _JobItemState extends State<JobItem> {
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
                      widget.job.company.logo,
                      width: 60,),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        this.widget.job.isFavorite = !this.widget.job.isFavorite;
                      });
                    },
                    child: Icon(
                      this.widget.job.isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: widget.darkTheme ? Colors.white : Colors.grey,
                    ),
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

  BoxDecoration itemBoxDecoration(BuildContext context){
     return BoxDecoration(
         color: widget.darkTheme ? Theme.of(context).primaryColor : Colors.white,
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

   Widget texts(context){
     return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text(
           widget.job.company.name,
           style: TextStyle(
               fontSize: 15,
               color: widget.darkTheme ? Color(0xffb7b7d2) : Colors.grey
           ),
         ),
         Text(
           widget.job.role,
           style: widget.darkTheme ? Theme.of(context).textTheme.headline3 : Theme.of(context).textTheme.headline4,
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
               widget.job.location,
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
}



