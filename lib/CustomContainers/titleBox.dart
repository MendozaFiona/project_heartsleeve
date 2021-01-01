import 'package:flutter/material.dart';

//var _title = "this is a temporary title";

/*setTitle(var textTitle) {
    _title = textTitle;
}*/

//CODE FOR THE SORT MENU CONTAINER
class TitleBox extends StatelessWidget {
  //since it's beng passed to, should this be stateful???
  
  final String defaultTitle;

  const TitleBox( {
    this.defaultTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: Container(
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(this.defaultTitle, textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(106, 65, 98, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                          ))),
                ],

                //padding
              ),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(160, 127, 136, 0.7),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              width: MediaQuery.of(context).size.width * 0.9,
              height: 40.0 /*MediaQuery.of(context).size.height * 0.05*/,
            )));
  }
}
