import 'package:flutter/material.dart';

Widget customButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text("DONE",
        style: TextStyle(color: Color.fromRGBO(160, 127, 136, 1))
      ),

      SizedBox(width: 3),
      
      Container(
        child: ImageIcon(
          AssetImage("assets/images/write.png"),
          color: Color.fromRGBO(160, 127, 136, 1),
        ),
      ),
    ],
  );
}

//PLEASE CHANGE TO DYNAMIC

//PLEASE CHANGE OTHER CLASSES' LOGIC SIMILAR TO THIS
