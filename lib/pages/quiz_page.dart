import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizcar/pages/result_page.dart';

// Widget Class to push data from json file
class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString("assets/python.json"),
      builder: (context, snapshot) {
        List mydata = json.decode(snapshot.data.toString());
        if (mydata == null) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return QuizPageContainer(mydata: mydata);
        }
      },
    );
  }
}

// class QuizPage extends StatefulWidget {
//   @override
//   _QuizPageState createState() => _QuizPageState();
// }

// class _QuizPageState extends State<QuizPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(

//     );
//   }
// }

class QuizPageContainer extends StatefulWidget {
  var mydata;

  QuizPageContainer({Key key, @required this.mydata}) : super(key: key);

  @override
  _QuizPageContainerState createState() => _QuizPageContainerState(mydata);
}

class _QuizPageContainerState extends State<QuizPageContainer> {
  var mydata;
  _QuizPageContainerState(this.mydata);

  Color colorToShow = Colors.indigoAccent;
  Color rightChoice = Colors.green;
  Color wrongChoice = Colors.red;
  int marks = 0;
  int i = 1;
  int timer = 30;
  String showTimer = "30";

  Map<String, Color> btnColor = {
    "a": Colors.indigoAccent,
    "b": Colors.indigoAccent,
    "c": Colors.indigoAccent,
    "d": Colors.indigoAccent,
  };

  bool cancelTimer = false;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  void startTimer() async {
    const oneSecond = Duration(seconds: 1);
    Timer.periodic(oneSecond, (Timer time) {
      setState(() {
        if (timer < 1) {
          time.cancel();
          nextQuestion();
        } else if (cancelTimer == true) {
          time.cancel();
        } else {
          timer = timer - 1;
        }
        showTimer = timer.toString();
      });
    });
  }

  void nextQuestion() {
    cancelTimer = false;
    timer = 30;
    setState(() {
      if (i < 10) {
        i++;
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => ResultPage(marks: marks),
        ));
      }
      btnColor["a"] = Colors.indigoAccent;
      btnColor["b"] = Colors.indigoAccent;
      btnColor["c"] = Colors.indigoAccent;
      btnColor["d"] = Colors.indigoAccent;
    });
    startTimer();
  }

  void checkAswer(String optionChoiced) {
    if (mydata[2]["1"] == mydata[1]["1"][optionChoiced]) {
      marks = marks + 5;
      colorToShow = rightChoice;
    } else {
      colorToShow = wrongChoice;
    }
    setState(() {
      btnColor[optionChoiced] = colorToShow;
      cancelTimer = true;
    });

    Timer(Duration(seconds: 2), nextQuestion);
  }

// TODO: Notice to press button rapidly and they pass out
  Widget choiceButton(String optionQuestion) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: MaterialButton(
        onPressed: () => checkAswer(optionQuestion),
        child: Text(
          mydata[1][i.toString()][optionQuestion],
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Alike",
            fontSize: 16.0,
          ),
          maxLines: 1,
        ),
        color: btnColor[optionQuestion],
        splashColor: Colors.indigoAccent[700],
        highlightColor: Colors.indigoAccent[700],
        minWidth: 200.0,
        height: 45.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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

    // WillPopScope: Is too get history in case user can go back screen
    return WillPopScope(
      onWillPop: () {
        return showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(
                    "Quiz Car",
                  ),
                  content: Text("You Can't Go Back At This Stage."),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('OK'),
                    )
                  ],
                ));
      },
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  mydata[0][i.toString()],
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: "Quando",
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    choiceButton('a'),
                    choiceButton('b'),
                    choiceButton('c'),
                    choiceButton('d'),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.topCenter,
                child: Center(
                  child: Text(
                    showTimer,
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Times New Roman',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
