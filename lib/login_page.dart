// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:latihan11pplg2_2024/widgets/my_colors.dart';
import 'package:latihan11pplg2_2024/widgets/my_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Page",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            MyTextfield(
              hintText: "username",
              textStyle: TextStyle(fontFamily: 'MonserratSemi'),
              isObsecure: false,
              icons: Icon(Icons.person),
              controller: usernameController,
            ),
            MyTextfield(
              hintText: "username",
              textStyle: TextStyle(fontFamily: 'MonserratSemi'),
              isObsecure: false,
              icons: Icon(Icons.lock),
              controller: passwordController,
            ),
            Container(
              width: 600,
              height: 45,
              margin: const EdgeInsets.all(10.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    String username = usernameController.text;
                    String password = usernameController.text;

                    if (username == "Satria" && password == "Sat29") {
                      statusLogin = "Login Succes";
                    } else {
                      statusLogin = "Login Deny";
                    }
                  });
                },
                label: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
                icon: Icon(
                  Icons.login,
                  color: Colors.white,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            Expanded(child: Container()),
            TextButton(
              onPressed: () {},
              child: Text("Did not have account? Register Here"),
            ),
          ],
        ),
      ),
    );
  }
}
