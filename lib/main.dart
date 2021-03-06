import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key})
      : super(
            key: key); //Can be ignored right now untill we're passing any data

// home: HomePage(),
  @override
  Widget build(BuildContext context) {
    // addNumber(4, 5);
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
       
        ),
      darkTheme: ThemeData(brightness: Brightness.light),
      // initialRoute: "/home",
      routes: {
        "/":(context) => LoginPage(),
        "/home":(context) => HomePage(), 
        "/login":(context) => new LoginPage() //no need to put new keyword as dart is smart enough to know it is an object
      },
    );
  }

  // showList({required bool isLoggedIn, String list = "List Value"}) {
  //   print("Logged in $isLoggedIn and list is $list");
  // }

  // addNumber(int a, int b) {
  //   print(a + b);
  // }
}
