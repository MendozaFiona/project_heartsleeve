import 'package:flutter/material.dart';
import 'package:heartsleeve/CustomContainers/titleBox.dart';
import 'package:heartsleeve/essentials.dart';
import 'package:provider/provider.dart';
import 'package:heartsleeve/Models/authModel.dart';
import 'package:heartsleeve/Services/deleteUserService.dart';

class MyAccountBody extends StatefulWidget {
  @override
  MyAccountBodyState createState() {
    return MyAccountBodyState();
  }
}

class MyAccountBodyState extends State<MyAccountBody> {
  String _user;

  @override
  void initState() {
    _user = Provider.of<AuthModel>(context, listen: false).user;
    super.initState();
  }

  _removeEntry() async {
    var token = Provider.of<AuthModel>(context, listen: false).token;

    print(_user);

    try {
      var res = await deleteUser(_user, token);
      print(res.message);
      return res;
    } catch (e) {
      print(e);
    }
  }

  showDeleteDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text('Delete My Account'),
              content: Text('Are you sure you want to delete your account?'),
              actions: [
                TextButton(
                    child: Text('Delete'),
                    onPressed: () async {
                      await _removeEntry();
                      Navigator.of(context).pop(); //future delay this, with scaffold... add another navigator to exit app to logout

                    }),
                TextButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    })
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    void _login() {
      Provider.of<AuthModel>(context, listen: false).logout();
      Navigator.popAndPushNamed(context, "/");
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          child: TitleBox(
            defaultTitle: "delete my account",
          ),
          onTap: () async {
            var res = await showDeleteDialog(context);
            if (res != null) {
              Scaffold.of(context)
                ..removeCurrentSnackBar()
                ..removeCurrentSnackBar()
                ..showSnackBar(SnackBar(content: Text('$res')));
            }
            Scaffold.of(context).showSnackBar(SnackBar(content: Text("Deleting your account. We're very sorry to see you go...")));
                      
            Future.delayed(Duration(seconds: 2), () {
              Provider.of<AuthModel>(context, listen: false).logout();
              Navigator.popAndPushNamed(context, "/");
            });
          },
        ),
        emptySpace(10.0),
        Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              child: customButton("log out", Color.fromRGBO(106, 65, 98, 1)),
              onTap: _login,
            )),
      ],
    );
  }
}
