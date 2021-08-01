import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("Login Page",
        style: TextStyle(
          fontSize: 20,//need not to give here because in web it can be too small, need to place this attribute in some other place
          color: Colors.blue,
          fontWeight: FontWeight.bold
          ),
          textScaleFactor: 2.0,//by default 1.0 it is the size which doubles based upon factor
        ),
      ),
      
    );
  }
}