import 'package:flutter/material.dart';


Widget customButton([btnTxt = 'default']) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text(btnTxt,
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
} //PLEASE CHANGE TO DYNAMIC

//PLEASE CHANGE OTHER CLASSES' LOGIC SIMILAR TO THIS


InputDecoration formatDecor(var str, [fillCol = Colors.white]) {
  
  return InputDecoration(
    hintText: str,
    border:
        OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
    
    contentPadding: EdgeInsets.fromLTRB(15,8,15,8),

    fillColor: fillCol,
    filled: true,
    
  );
}


SizedBox emptySpace([customHeight = 20.0]) {
  return SizedBox(
    height: customHeight,
  );
}


Container uniformBg(){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            colorFilter: ColorFilter.mode(Color.fromRGBO(254,250,250,1).withOpacity(0.2), BlendMode.dstATop),
            image: AssetImage("assets/images/heartsleeve_icon.png"),
            fit: BoxFit.scaleDown,
            //scale: 0.8,
        ),

        color: Color.fromRGBO(254,250,250,1),      

      )
    );
}
