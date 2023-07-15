import 'package:flutter/material.dart';
import 'package:myntra_task1/screens/home_screen.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: HomePage()));
}