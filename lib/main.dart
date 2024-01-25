import 'package:flutter/material.dart';
import 'package:singh/Widgets/Themes.dart';
import 'package:singh/home_page/home_page.dart';
import 'package:singh/home_page/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      //themeMode: ThemeMode.light,
      initialRoute: HomePage.iniRoute,
      routes: {
        HomePage.iniRoute: (context) => LoginPage(),
        HomePage.homeRoute: (context) => HomePage(),
        LoginPage.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
