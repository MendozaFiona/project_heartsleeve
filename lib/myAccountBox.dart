import 'package:flutter/material.dart';
import 'package:heartsleeve/styles.dart';

class MyAccountBox extends StatefulWidget {
  @override
  AccountBoxState createState() {
    return AccountBoxState();
  }
}

class AccountBoxState extends State<MyAccountBox> {

  //GET FROM DATABASE
  String _defaultName = "You haven't input a name yet",
      _defUname = "No username yet",
      _defEmail = "No email linked",
      _defBday = "No birthday information saved";

  changeName() {
    setState(() {
      _defaultName = " " + "Juan dela Cruz";
      _defUname = " " + "SecretJuan";
      _defEmail = " " + "Se******an@gmail.com";
      _defBday = " " + "October 29, 2001";
    });
  }

  @override
  Widget build(BuildContext context) {
    changeName();

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
                    child: Column(children: [
                      Row(
                        children: [
                          Text('name:', textAlign: TextAlign.left),
                          Text(_defaultName, textAlign: TextAlign.left),
                          //SizedBox(width: 170)
                        ], // children
                      ),
                      Row(
                        children: [
                          Text('username:', textAlign: TextAlign.left),
                          Text(_defUname, textAlign: TextAlign.left),
                          //SizedBox(width: 120)
                        ], // children
                      ),
                      Row(
                        children: [
                          Text('email:', textAlign: TextAlign.left),
                          Text(_defEmail, textAlign: TextAlign.left),
                          //SizedBox(width:170)
                        ], // children
                      ),
                      Row(
                        children: [
                          Text('birthday:', textAlign: TextAlign.left),
                          Text(_defBday, textAlign: TextAlign.left),
                          //SizedBox(width:140)
                        ], // children
                      ),
                      emptySpace(10.0),
                      Row(
                        children: [
                          Expanded(
                            child: customButton(
                                "EDIT", Colors.white, MainAxisAlignment.center),
                          )
                        ], // children
                      )
                    ])),

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
