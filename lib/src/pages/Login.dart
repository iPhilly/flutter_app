import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body: new Center(
        child: Text('登录'),
      ),
      backgroundColor: Colors.red,
    );
  }

  click() {

  }
}