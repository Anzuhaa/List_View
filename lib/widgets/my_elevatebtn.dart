// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class MyElevatebtn extends StatelessWidget {
  final Text text;
  final Color backgroundColor;
  final Color textColors;
  final double radius;
  final double elevation;

  const MyElevatebtn({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColors,
    required this.radius,
    required this.elevation,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
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
    );
  }
}
