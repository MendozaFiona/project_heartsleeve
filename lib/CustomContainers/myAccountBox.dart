import 'package:flutter/material.dart';
//import 'package:heartsleeve/CustomContainers/accountInformation.dart';
import 'package:heartsleeve/CustomContainers/tagsList.dart';
import 'package:heartsleeve/Services/diaryEntryService.dart';
import 'package:heartsleeve/JsonModels/diaryEntry.dart';

class MyAccountBox extends StatelessWidget {
  final String fxn;
  final double heightBox;
  final obj;
  //final BuildContext userContext;

  const MyAccountBox({this.fxn, this.heightBox, this.obj});

  //GET FROM DATABASE
  /*_test() {
    var _testFxn = this.fxn;
    //return accountInfo();
    if (_testFxn == "accountInfo") {
      return accountInfo();
    } else if (_testFxn == "privacySafety") {
      return privacySafety();
    }
  }*/

  _getHeight() {
    return this.heightBox;
  }

  @override
  Widget build(BuildContext context) {
    //changeName();

    //final _
    return InkWell(
      child: Padding(
          padding: EdgeInsets.only(bottom: 5.0),
          child: Align(
              alignment: Alignment.center,
              child: Container(
                // CHANGE modify to depend text on parameter sent

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

                      return CircularProgressIndicator();
                    },
                  ), //this should be dynamic
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
