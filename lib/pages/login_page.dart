import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter your username", labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter your password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print("Hello");
                      },
                      child: Text("Login"),
                      style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),)
                  )
                ],
              ),
            )
          ],
        ));
  }
}

/*

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


 */