import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizcar/pages/quiz_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [
    "images/py.png",
    "images/java.png",
    "images/js.png",
    "images/cpp.png",
  ];

  // TODO: After, change to a new funcionality based on mockup
  Widget customCard(String langname, String image) {
    return Padding(
      padding: EdgeInsets.all(
        20.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => QuizPage()));
        },
        child: Material(
          elevation: 10.0,
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.indigoAccent,
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                        height: 200.0,
                        width: 200.0,
                        child: ClipOval(
                            child: Image(
                                fit: BoxFit.contain,
                                image: AssetImage(image)))),
                  ),
                ),
                Center(
                  child: Text(
                    langname,
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                      fontFamily: "Qaundo",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "aksjlksjdaijd lajd lkasjdlsaj j jdsjsidji jdsidjsidjsidjsidjsijdisd i idjsidjsdjsid  sjdsidjsijdsijdisjdisd  isjdisjdas djsad ajijsaoiodjiasjdsadsa sadd adjsakldja",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontFamily: "Alike",
                    ),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //TODO: Put this setOrientation to cover all app
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Stack(
        children: <Widget>[
          customCard("Python", images[0]),
        ],
      ),
    );
  }
}
