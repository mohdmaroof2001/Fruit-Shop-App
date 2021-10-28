import 'package:flutter/material.dart';
import 'package:foodapp_01/HomePage.dart';
import 'package:foodapp_01/Hours.dart';
import 'package:foodapp_01/Order.dart';
import 'package:foodapp_01/SplashScreen.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Food App",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}
