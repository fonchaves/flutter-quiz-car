import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:quizcar/pages/result_page.dart';
import 'package:quizcar/stores/question_store.dart';

class QuizzPage extends StatefulWidget {
  @override
  _QuizzPageState createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  QuestionStore _questionStore;

  int index = 0;
  int timer = 31;
  //String showTimer = (timer - 1).toString(); // TODO: ANALISAR LEGIBILIDADE
  String showTimer = "30"; // TODO: ANALISAR LEGIBILIDADE
  bool cancelTimer = false;
  double points = 0; // TODO: use int here, Cast in next page
  double totalQuestions = 5.0; // TODO: Add lenght of list here
  Color colorToShow = Colors.grey[800];
  Color buttonCollor = Colors.grey[800];

  @override
  void initState() {
    super.initState();
    _questionStore = QuestionStore();
    _questionStore.loadQuestions();
    startTimer();
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
    print("NEXT QUESTION");
    cancelTimer = false;
    timer = 31;
    if (index < _questionStore.listQuestion.length - 1) {
      index++;
    } else {
      timer = 0; // Zerar Timer e Função
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) =>
            ResultPage(points: points, totalQuestions: totalQuestions),
      ));
    }
    buttonCollor = Colors.grey[800];
    startTimer();
  }

  void checkChoice(String optionQuestion) {
    final correctQuestion = _questionStore.listQuestion[index].correctQuestion;
    if (correctQuestion == optionQuestion) {
      print('YEEEEESSS');
      points++;
      colorToShow = Colors.green;
    } else {
      print('PUUUUUUTZ');
      colorToShow = Colors.red;
    }
    setState(() {
      buttonCollor = colorToShow;
      cancelTimer = true;
    });

    Timer(Duration(seconds: 1), nextQuestion);
  }

  // TODO: Put in a new file with
  Widget optionButton(String optionQuestion) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 13.0,
        horizontal: 21.0,
      ),
      child: ButtonTheme(
        minWidth: 300.0,
        height: 52,
        child: RaisedButton(
          onPressed: () => checkChoice(optionQuestion),
          highlightColor: Colors.grey[900],
          color: buttonCollor, //TODO: MODIFY COLOR HERE
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(21.0)),
          child: Text(
            optionQuestion,
            maxLines: 1,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Roboto",
              fontSize: 17.0,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final listQuestion = _questionStore.listQuestion;

    return WillPopScope(
      onWillPop: () {
        return showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(
                    "Quiz Car",
                  ),
                  content: Text(
                      "Ops, você não pode voltar a pergunta. Siga em frente!"),
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
        backgroundColor: Colors.grey[850],
        body: Container(
          child: Observer(
            builder: (context) {
              return listQuestion != null
                  ? Column(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              listQuestion[index].question,
                              style: TextStyle(
                                fontSize: 21.0,
                                fontFamily: "Roboto",
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              optionButton(listQuestion[index].options[0]),
                              optionButton(listQuestion[index].options[1]),
                              optionButton(listQuestion[index].options[2]),
                              optionButton(listQuestion[index].options[3]),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              showTimer,
                              style: TextStyle(
                                fontSize: 34.0,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Roboto",
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    );
            },
          ),
        ),
      ),
    );
  }
}
