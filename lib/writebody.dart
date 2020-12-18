import 'package:flutter/material.dart';
import 'essentials.dart';

class WriteBody extends StatefulWidget {
  @override
  DiaryEntryFormState createState() {
    return DiaryEntryFormState();
  }
}

class DiaryEntryFormState extends State<WriteBody> {
  final _formKey = GlobalKey<FormState>();
  final inputCol = Color.fromRGBO(160, 127, 136, 0.7);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [

          emptySpace(15.0),

          TextFormField(
            decoration: formatDecor('title', inputCol),
            maxLines: 1,
          ),

          emptySpace(),

          TextFormField(
            decoration: formatDecor('write something...', inputCol),
            maxLines: 13,
          ),

          emptySpace(),

          TextFormField(
            decoration: formatDecor('#tags', inputCol),
            maxLines: 2,
          ),

          emptySpace(),

          customButton("DONE", Color.fromRGBO(160, 127, 136, 1)),

        ],
      ),
    );
  } // build

}
