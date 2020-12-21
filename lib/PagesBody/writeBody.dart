import 'package:flutter/material.dart';
import 'package:heartsleeve/essentials.dart';
import 'package:textfield_tags/textfield_tags.dart';

class WriteBody extends StatefulWidget {
  @override
  DiaryEntryFormState createState() {
    return DiaryEntryFormState();
  }
}

class DiaryEntryFormState extends State<WriteBody> {
  final _formKey = GlobalKey<FormState>(),
      _userTags = [],
      inputCol = Color.fromRGBO(160, 127, 136, 0.7),
      titleTxtController = TextEditingController(),
      bodyTxtController = TextEditingController();

  var _writeTitle, _writeTxtBody;

  //DiaryEntryFormState(this._writeTitle, this._writeTxtBody);
  //tagsTxtController = TextEditingController();

  @override
  void dispose() {
    titleTxtController.dispose();
    bodyTxtController.dispose();
    //tagsTxtController.dispose();

    super.dispose();
  }

  _addTagList(tag) {
    _userTags.add(tag);
  }

  _delTagList(tag) {
    _userTags.remove(tag);
  }

  _getTitle() {
    _writeTitle = titleTxtController.text;
  }

  _getTxtBody(){
    _writeTxtBody = bodyTxtController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: formatDecor('title', inputCol),
            maxLines: 1,
            controller: titleTxtController,
          ),
          emptySpace(),
          TextFormField(
            decoration: formatDecor('write something...', inputCol),
            maxLines: 13,
            controller: bodyTxtController,
          ),
          emptySpace(),
          TextFieldTags(
            tagsStyler: tagStyleDecor(),
            textFieldStyler: tagFieldDecor(),
            onTag: (tag) {
              if (!_userTags.contains(tag)) {
                _addTagList(tag);
              }
              print(_userTags);
            },
            onDelete: (tag) {
              _delTagList(tag);
              print(_userTags); //tag gives the value!
            },
          ),
          emptySpace(),
          customButton("done", Color.fromRGBO(160, 127, 136, 1)),
        ],
      ),
    );
  } // build

}
