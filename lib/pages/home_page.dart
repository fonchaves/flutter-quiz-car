import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quizcar/pages/quizz_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // TODO: Get content for api in background to cache local on initState

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 6,
                child: Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Image(
                    image: AssetImage("images/quizzapp-logo.png"),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(
                    40.0,
                  ),
                  child: Container(
                    height: 60,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => QuizzPage()));
                      },
                      child: Material(
                        elevation: 10.0,
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.indigoAccent,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  "Começar",
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
