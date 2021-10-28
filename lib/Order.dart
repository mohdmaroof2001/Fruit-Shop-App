// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:foodapp_01/HomePage.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  _OrderState createState() => _OrderState();
}

bool loadingcircul = false;
int loadingNo = 0;

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order"),
        leading: IconButton(
          onPressed: () {
            // Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePagee()));
          },
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.lightGreen[700],
      ),
      body: Center(
        child: Stack(
          children: [
            WebView(
              initialUrl: "https://www.bigbasket.com/",
              javascriptMode: JavascriptMode.unrestricted,
              onPageStarted: (start) {
                setState(() {
                  loadingcircul = true;
                });
              },
              onPageFinished: (finished) {
                setState(() {
                  loadingcircul = false;
                });
              },
              onProgress: (progress) {
                setState(() {
                  loadingNo = progress;
                });
              },
            ),
            if (loadingcircul) ...[
              Center(
                child: CircularProgressIndicator(
                  value: loadingNo.toDouble() / 100,
                  strokeWidth: 3,
                  backgroundColor: Colors.yellow,
                  color: Colors.red,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                ),
              ),
              Center(
                child: Text("$loadingNo"),
              )
            ]
          ],
        ),
      ),
    );
  }
}
