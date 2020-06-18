import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizcar/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // TODO: Get content for api in background to cache local on initState
  @override
  void initState() {
    super.initState();
    openHomePage();
  }

  openHomePage() async {
    await Future.delayed(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Stack(
        children: <Widget>[
          Container(
            height: _height,
            width: _width,
            child: Image.network(
              'https://images.unsplash.com/photo-1556448851-9359658faa54?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomRight,
            height: _height,
            width: _width,
            child: Text(
              "Photo by Richard Biros on Unsplash",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white60,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
