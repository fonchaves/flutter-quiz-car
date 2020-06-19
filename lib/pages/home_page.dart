import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:quizcar/pages/quiz_page.dart';
import 'package:quizcar/pages/quizz_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //TODO: Put this setOrientation to cover all app
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    //TODO: Add SafeArea
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(
              20.0,
            ),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => QuizzPage()));
              },
              child: Material(
                elevation: 10.0,
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.indigoAccent,
                child: Container(
                  // TODO: Test and check AxisAlignment of attributes
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Text(
                          "Começar!!",
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.white,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
