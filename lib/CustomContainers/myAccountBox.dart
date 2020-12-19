import 'package:flutter/material.dart';
import 'package:heartsleeve/CustomContainers/accountInformation.dart';
import 'privacySafety.dart';

class MyAccountBox extends StatefulWidget {
  final String fxn;

  const MyAccountBox({this.fxn});

  @override
  AccountBoxState createState() {
    return AccountBoxState();
  }
}

class AccountBoxState extends State<MyAccountBox> {
  //GET FROM DATABASE
  _test() {
    var _test = widget.fxn;
    //return accountInfo();
    if (_test == "accountInfo") {
      return accountInfo();
    } else {
      return privacySafety();
    }
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
                height: 120.0,
              ))),
      /*onTap: () {
        print("you tapped this");
      },*/
    );
  }
}
