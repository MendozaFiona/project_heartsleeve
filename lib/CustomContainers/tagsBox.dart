import 'package:flutter/material.dart';
import 'package:heartsleeve/essentials.dart';
import 'package:heartsleeve/CustomContainers/tagsList.dart';
import 'package:heartsleeve/Services/diaryEntryService.dart';
import 'package:heartsleeve/JsonModels/diaryEntry.dart';

class TagsBox extends StatelessWidget {
  final String fxn;
  final double heightBox;
  final obj;

  const TagsBox({this.fxn, this.heightBox, this.obj});

  _getHeight() {
    return this.heightBox;
  }

  @override
  Widget build(BuildContext context) {

    return InkWell(
      child: Padding(
          padding: EdgeInsets.only(bottom: 5.0),
          child: Align(
              alignment: Alignment.center,
              child: Container(

                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 5, 10),
                  child: FutureBuilder<List<TagsInfo>>(
                    future: getTags(obj.id),
                    builder: (context, snapshot) {
                      String _tagString = "";
                      if (snapshot.hasData) {
                        for (int i = 0; i < snapshot.data.length; i++) {
                          _tagString = _tagString + "${snapshot.data[i].tags} | ";
                        }
                        return SingleChildScrollView(child: tagsList(_tagString));
                      }

                      return centerWidget(CircularProgressIndicator(), context);
                    },
                  ),
                ),

                decoration: BoxDecoration(
                    color: Color.fromRGBO(160, 127, 136, 0.7),
                    borderRadius: BorderRadius.all(Radius.circular(15))),

                width: MediaQuery.of(context).size.width * .9,
                height: _getHeight(),
              ))),
    );
  }
}
