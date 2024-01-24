import 'package:flutter/material.dart';

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
          title: Text("Catagol"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text("wellcome to $days days of flutter by $name"),
        ),
        drawer: Drawer());
  }
}
