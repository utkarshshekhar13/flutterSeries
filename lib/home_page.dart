import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "Flutter";
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days of flutter series"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
