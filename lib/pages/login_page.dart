import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        name = value;
                        setState(
                            () {}); //Need to rebuild the context to reflect changes as it is a StatefulWidget
                      },
                      decoration: InputDecoration(
                          hintText: "Enter your username",
                          labelText: "Username"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter your password",
                          labelText: "Password"),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });

                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton? Icon(Icons.done,color: Colors.white,) : Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            // shape: changeButton? BoxShape.circle:BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(changeButton ? 50 : 8)
                            ),
                      ),
                    )

                    // ElevatedButton(
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //     },
                    //     child: Text("Login"),
                    //     style: TextButton.styleFrom(minimumSize: Size(150, 40))

                    //     // ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),)
                    //   )
                  ],
                ),
              )
            ],
          ),
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