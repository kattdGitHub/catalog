import 'package:flutter/material.dart';
import 'package:singh/Widgets/Item_Widget.dart';
import 'package:singh/Widgets/drawer.dart';
import 'package:singh/models/catalog.dart';

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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: CatalogModel.Items.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemWidget(item: CatalogModel.Items[index]);
            },
          ),
        ),
        drawer: MyDrawer());
  }
}
