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
    if (points < 50) {
      image = images[2];
      message = "Você não foi bem..  \n" + "Sua pontuação $points%";
    } else if (points < 90) {
      image = images[1];
      message = "Voce pode ir melhor.. \n" + "Sua pontuação $points%";
    } else {
      image = images[0];
      message = "Parabéns, voce mostra que domina o assunto \n" +
          "Sua pontuação $points";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Result",
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 7,
            child: Material(
              elevation: 10.0,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      child: Container(
                        width: 300.0,
                        height: 300.0,
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
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
                  },
                  child: Text(
                    "Página Inicial",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  borderSide: BorderSide(width: 3.0, color: Colors.indigo),
                  splashColor: Colors.indigoAccent,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
