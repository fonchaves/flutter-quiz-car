import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizcar/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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

  // TODO: Add FadeInOut Animation
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
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("images/richard-biros-unsplash.jpg"),
            ),
          ),
          SafeArea(
            minimum: EdgeInsets.all(15.0),
            child: Container(
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
          ),
        ],
      ),
    );
  }
}
