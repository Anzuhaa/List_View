// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  final TextStyle textStyle;
  final bool isObsecure;
  final Icon icons;
  final TextEditingController controller;

  //
  const MyTextfield({
    super.key,
    required this.hintText,
    required this.textStyle,
    required this.isObsecure,
    required this.icons,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: TextField(
        style: textStyle,
        obscureText: isObsecure,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.blue),
          ),
          prefixIcon: icons,
        ),
      ),
    );
  }
}
