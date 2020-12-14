import 'package:flutter/material.dart';
import 'homebody.dart';

class UniformLayout extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(Color.fromRGBO(254,250,250,1).withOpacity(0.2), BlendMode.dstATop),
              image: AssetImage("assets/images/heartsleeve_icon.png"),
              fit: BoxFit.scaleDown,
              //scale: 0.8,
          ),

          color: Color.fromRGBO(254,250,250,1),      

        ),
        child: HomeBody(), //change to be dynamic

        constraints: BoxConstraints.expand()
      );
  } // build

}
