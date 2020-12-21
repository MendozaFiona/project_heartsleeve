import 'package:flutter/material.dart';
import 'package:textfield_tags/textfield_tags.dart';

Widget customButton(
    [btnTxt = 'default',
    _defaultClr = Colors.white,
    _axAlign = MainAxisAlignment.end,
    _fSize = 20.0]) {
  
  return Row(
    mainAxisAlignment: _axAlign,
    //crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(btnTxt, style: TextStyle(color: _defaultClr, fontSize: _fSize)),
      SizedBox(width: 3),
      Container(
        child: ImageIcon(
          AssetImage("assets/images/write.png"),
          color: _defaultClr,
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

    contentPadding: EdgeInsets.fromLTRB(15, 8, 15, 8),

    //hintStyle: TextStyle(fontSize: 16.0, height: 2.0),

    fillColor: fillCol,
    filled: true,
  );
}

SizedBox emptySpace([customHeight = 20.0]) {
  return SizedBox(
    height: customHeight,
  );
}

TagsStyler tagStyleDecor(){
  return TagsStyler(
    //tagTextStyle: TextStyle(fontWeight: FontWeight.bold),
    tagDecoration: BoxDecoration(color: Color.fromRGBO(254, 250, 250, 1), borderRadius: BorderRadius.circular(8.0), ),
    tagCancelIcon: Icon(Icons.cancel, size: 18.0, color: Color.fromRGBO(106, 65, 98, 1)),
    tagPadding: const EdgeInsets.all(6.0)
  );
}

TextFieldStyler tagFieldDecor(){
  return TextFieldStyler(
    hintText: "#tags",
    textFieldBorder:
        OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),

    contentPadding: EdgeInsets.fromLTRB(15, 8, 15, 8),

    //hintStyle: TextStyle(fontSize: 16.0, height: 2.0),

    textFieldFilledColor: Color.fromRGBO(160, 127, 136, 0.7),
    textFieldFilled: true,
  );
}

Container uniformBg() {
  return Container(
      decoration: BoxDecoration(
    image: DecorationImage(
      colorFilter: ColorFilter.mode(
          Color.fromRGBO(254, 250, 250, 1).withOpacity(0.2), BlendMode.dstATop),
      image: AssetImage("assets/images/heartsleeve_icon.png"),
      fit: BoxFit.scaleDown,
      //scale: 0.8,
    ),
    color: Color.fromRGBO(254, 250, 250, 1),
  ));
}

validateForm([inputExp, String _errResponse = "Invalid Input", String fType]) {
  return (value) {
    if (value.isEmpty) {
      return "This field is required";
    }
    
    else if (fType == "confirm"){
      print(inputExp);
      if (inputExp != value){
        return _errResponse;
      }

    }

    else if (inputExp.hasMatch(value) == false) {
        return _errResponse;
    }

    return null;
  };
}
