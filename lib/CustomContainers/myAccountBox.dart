import 'package:flutter/material.dart';
import 'package:heartsleeve/CustomContainers/accountInformation.dart';
import 'privacySafety.dart';

class MyAccountBox extends StatefulWidget {
  final String fxn;
  final double heightBox;

  const MyAccountBox({this.fxn, this.heightBox});

  @override
  AccountBoxState createState() {
    return AccountBoxState();
  }
}

class AccountBoxState extends State<MyAccountBox> {
  //GET FROM DATABASE
  _test() {
    var _testFxn = widget.fxn;
    //return accountInfo();
    if (_testFxn == "accountInfo") {
      return accountInfo();
    } else if(_testFxn == "privacySafety"){
      return privacySafety();
    }
  }

  _getHeight(){
    return widget.heightBox;
  }


  @override
  Widget build(BuildContext context) {
    //changeName();

    //final _
    return InkWell(
      child: Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Align(
              alignment: Alignment.center,
              child: Container(
                // CHANGE modify to depend text on parameter sent

                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 5, 10),
                  child: _test(), //this should be dynamic
                ),

                decoration: BoxDecoration(
                    color: Color.fromRGBO(160, 127, 136, 0.7),
                    borderRadius: BorderRadius.all(Radius.circular(15))),

                width: MediaQuery.of(context).size.width * .9,
                height: _getHeight(),
              ))),
      /*onTap: () {
        print("you tapped this");
      },*/
    );
  }
}
