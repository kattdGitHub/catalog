import 'package:flutter/material.dart';
import 'package:singh/Widgets/drawer.dart';

class HomePage extends StatelessWidget {
  static String iniRoute = "/";
  static String homeRoute = "/home";
  final int days = 30;

  final String name = 'codepur';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Catagol App",
          style: TextStyle(color: Colors.black),
        ),
        // backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            "wellcome to $days days of flutter by $name",
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
