import 'package:flutter/material.dart';
import 'package:quizcar/pages/home_page.dart';

class ResultPage extends StatefulWidget {
  double totalQuestions;
  double points;

  ResultPage({
    Key key,
    @required this.points,
    @required this.totalQuestions,
  }) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState(points, totalQuestions);
}

class _ResultPageState extends State<ResultPage> {
  //TODO: Add Emojis in place of images
  List<String> images = [
    "images/success.png",
    "images/good.png",
    "images/bad.png",
  ];

  String message;
  String image;

  double points;
  double totalQuestions;
  _ResultPageState(this.points, this.totalQuestions);

  @override
  void initState() {
    points = (points * 100) / totalQuestions;
    String point = points.toStringAsFixed(0);
    if (points < 50) {
      image = images[2];
      message = "Você não foi bem..  \n" + "Sua pontuação $point%";
    } else if (points < 90) {
      image = images[1];
      message = "Voce pode ir melhor.. \n" + "Sua pontuação $point%";
    } else {
      image = images[0];
      message = "Parabéns, voce mostra que domina o assunto \n" +
          "Sua pontuação $point";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: _height,
        width: _width,
        child: Column(
          children: <Widget>[
            Material(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      child: Container(
                        width: _width * 0.5,
                        height: _height * 0.5,
                        child: ClipRect(
                          child: Image(
                            image: AssetImage(image),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 15.0,
                      ),
                      child: Center(
                        child: Text(
                          message,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: "Roboto",
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 30)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        OutlineButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                          },
                          child: Text(
                            "Página Inicial",
                            style: TextStyle(fontSize: 18.0),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 25.0),
                          borderSide:
                              BorderSide(width: 3.0, color: Colors.indigo),
                          splashColor: Colors.indigoAccent,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
