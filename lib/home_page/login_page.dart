import 'package:flutter/material.dart';
import 'package:singh/Utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();
// moveTOHome
  movetoHome(BuildContext context) async {
    if (_formkey.currentState?.validate() ?? false) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoutes);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SafeArea(
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: 150,
                  child: Image.asset(
                    'assets/images/What 2024-01-22 at 4.05.57 PM.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFormField(
                            decoration: InputDecoration(
                              hintText: "EnterUsername",
                              labelText: "UserName",
                            ),
                            validator: (value) {
                              if (value?.isEmpty ?? false) {
                                return "username cannot be empty";
                              }
                              return null;
                            },
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
                          validator: (value) {
                            if (value?.isEmpty ?? false) {
                              return "password cannot be empty";
                            } else if ((value?.length ?? 0) < 6) {
                              return "password length should be atleast 6";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Material(
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 50 : 8),
                            child: InkWell(
                              onTap: () => movetoHome(context),
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

                                // shape: changeButton
                                //     ? BoxShape.circle
                                //     : BoxShape.rectangle,
                              ),
                            )),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
