import 'package:flutter/material.dart';
import 'package:heartsleeve/essentials.dart';

class WriteBody extends StatefulWidget {
  @override
  DiaryEntryFormState createState() {
    return DiaryEntryFormState();
  }
}

class DiaryEntryFormState extends State<WriteBody> {
  final _formKey = GlobalKey<FormState>(),
  inputCol = Color.fromRGBO(160, 127, 136, 0.7),
  writeTxtController = TextEditingController();

  @override
  void dispose() {
    writeTxtController.dispose();
    super.dispose();
  }

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
            controller: writeTxtController,
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

          customButton("done", Color.fromRGBO(160, 127, 136, 1)),

        ],
      ),
    );
  } // build

}
