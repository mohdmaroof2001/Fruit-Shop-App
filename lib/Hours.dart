// ignore_for_file: file_names

// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:foodapp_01/HomePage.dart';

class Hours extends StatefulWidget {
  const Hours({Key? key}) : super(key: key);

  @override
  _HoursState createState() => _HoursState();
}

class _HoursState extends State<Hours> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trading Hours"),
        backgroundColor: Colors.lightGreen[700],
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePagee()));
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bg.png"), fit: BoxFit.cover),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Center(
                  child: Text(
                    "Trading Hours",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(
                  child: Text(
                    "Monday to Friday",
                    //  textDirection: TextDirection.ltr,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      //   fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Center(
                  child: Text(
                    "from 7am to 6pm",
                    //  textDirection: TextDirection.ltr,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      //   fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(
                  child: Text(
                    "Saturday",
                    //  textDirection: TextDirection.ltr,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      //   fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Center(
                  child: Text(
                    "from 7am to 5pm",
                    //  textDirection: TextDirection.ltr,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      //   fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(
                  child: Text(
                    "Sunday",
                    //  textDirection: TextDirection.ltr,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      //   fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Center(
                  child: Text(
                    "from 8am to 4pm",
                    //  textDirection: TextDirection.ltr,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      //   fontWeight: FontWeight.bold,
                    ),
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
