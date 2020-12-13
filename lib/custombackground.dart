import 'package:flutter/material.dart';
import 'homepage.dart';

class CustomBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          
          title: Text('Dashboard'),
        
      ), // should be dynamic

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(Color.fromRGBO(229,229,229,1).withOpacity(0.2), BlendMode.dstATop),
              image: AssetImage("assets/images/heartsleeve_icon.png"),
              fit: BoxFit.scaleDown,
              //scale: 0.8,
          ),

          color: Color.fromRGBO(229,229,229,1),      

        ),
        child: HomePage(),

        constraints: BoxConstraints.expand()
      ),
    );
  } // build

}
