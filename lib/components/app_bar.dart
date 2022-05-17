import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            iconSize: 40,
            icon: SvgPicture.asset('assets/icons/slider.svg'),
            onPressed: (){},
          ),
          Row(
            children: [
              IconButton(
                iconSize: 40,
                icon: SvgPicture.asset('assets/icons/search.svg'),
                onPressed: (){},
              ),
              IconButton(
                iconSize: 40,
                icon: SvgPicture.asset('assets/icons/settings.svg'),
                onPressed: (){},
              ),
            ],
          ),
        ],
      ),

    );
  }

}