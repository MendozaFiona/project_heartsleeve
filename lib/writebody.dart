import 'package:flutter/material.dart';
import 'customButton.dart';

class WriteBody extends StatefulWidget {
  @override
  DiaryEntryFormState createState() {
    return DiaryEntryFormState();
  }
}

InputDecoration formatDecor(var str) {
  return InputDecoration(
    hintText: str,
    border:
        OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
    
    contentPadding: EdgeInsets.fromLTRB(15,8,15,8),

    fillColor: Color.fromRGBO(160, 127, 136, 0.7),
    filled: true,
    
  );
}

SizedBox emptySpace([customHeight = 20.0]) {
  return SizedBox(
    height: customHeight,
  );
}

class DiaryEntryFormState extends State<WriteBody> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [

          emptySpace(15.0),

          TextFormField(
            decoration: formatDecor('title'),
            maxLines: 1,
          ),

          emptySpace(),

          TextFormField(
            decoration: formatDecor('write something...'),
            maxLines: 13,
          ),

          emptySpace(),

          TextFormField(
            decoration: formatDecor('#tags'),
            maxLines: 2,
          ),

          emptySpace(),

          customButton(),

          /*Container(
            child: ,
          )*/

        ],
      ),
    );
  } // build

}
