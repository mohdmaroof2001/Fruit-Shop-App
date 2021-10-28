// ignore_for_file: file_names

//import 'dart:js';

// import 'dart:js';

// import 'dart:js';

// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:foodapp_01/Find.dart';
import 'package:foodapp_01/Hours.dart';
import 'package:foodapp_01/Order.dart';
import 'package:foodapp_01/Rewards.dart';

class HomePagee extends StatefulWidget {
  const HomePagee({Key? key}) : super(key: key);

  @override
  _HomePageeState createState() => _HomePageeState();
}

class _HomePageeState extends State<HomePagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/750x1334.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 140),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Order()));
                  },
                  child: Image.asset("assets/button_orders.png"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 0.0,
                    shadowColor: Colors.lightGreen,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Reward()));
                  },
                  child: Image.asset("assets/button_rewards.png"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 0.0,
                    shadowColor: Colors.lightGreen,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Hours()));
                  },
                  child: Image.asset("assets/button_hours.png"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 0.0,
                    shadowColor: Colors.lightGreen,
                    // onSurface: Colors.purple,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Find()));
                  },
                  child: Image.asset("assets/button_find.png"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 0.0,
                    shadowColor: Colors.lightGreen,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
