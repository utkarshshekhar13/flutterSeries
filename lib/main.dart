import 'package:flutter/material.dart';
import 'package:flutter_catalog/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key})
      : super(
            key: key); //Can be ignored right now untill we're passing any data

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
