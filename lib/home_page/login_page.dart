import 'package:flutter/material.dart';
import 'package:singh/home_page/home_page.dart';

class LoginPage extends StatefulWidget {
  static String loginRoute = "/login";

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
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
            SafeArea(
              child: Container(
                color: Colors.white,
                width: double.infinity,
                height: 300,
                child: Image.asset(
                  'assets/images/WhatsApp Image 2024-01-22 at 4.05.37 PM (1).jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                          decoration: InputDecoration(
                            hintText: "EnterUsername",
                            labelText: "UserName",
                          ),
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          }),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "EnterThePassword",
                          labelText: "PassWord",
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      InkWell(
                        onTap: () async {
                          setState(() {
                            changeButton = true;
                          });
                          await Future.delayed(Duration(seconds: 1));
                          Navigator.pushNamed(context, HomePage.homeRoute);
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              // shape: changeButton
                              //     ? BoxShape.circle
                              //     : BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.circular(changeButton ? 50 : 8)),
                        ),
                      ), // InkWell(
                      //   onTap: () => moveTOHome(context),
                      //   child: ElevatedButton(
                      //       child: Text("Login",
                      //           style: TextStyle(color: Colors.white)),
                      //       style: TextButton.styleFrom(
                      //           backgroundColor: Colors.deepPurple,
                      //           maximumSize: Size(150, 40)),
                      //       onPressed: () {
                      //
                      //       }),
                      // )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  moveTOHome(BuildContext context) {}
}
