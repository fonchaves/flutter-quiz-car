import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:quizcar/interfaces/question_repository_interface.dart';
import 'package:quizcar/models/question_model.dart';
import 'package:quizcar/shared/consts_api.dart';

class QuestionRepository implements IQuestionRepository {
  @override
  Future<List<Question>> getAllQuestions() async {
    try {
      List<Question> listQuestion = List();
      final response = await http.get(ConstsApi.QUESTION_URL);
      if (response.statusCode == 200) {
        var decodedJson = jsonDecode(response.body);
        decodedJson
            .forEach((item) => listQuestion.add(Question.fromJson(item)));
        return listQuestion;
      } else {
        print("Erro ao carregar lista" + response.statusCode.toString());
        return null;
      }
    } catch (error, stacktrace) {
      print("Erro ao carregar lista" + stacktrace.toString());
      return null;
    }
  }

  Future<List<Question>> getAllQuestionsToFile(BuildContext context) async {
    try {
      List<Question> listQuestion = List();
      final result =
          DefaultAssetBundle.of(context).loadString(ConstsApi.QUESTION_FILE);
      if (result != null) {
        var decodedJson = jsonDecode(result.toString());
        decodedJson
            .forEach((item) => listQuestion.add(Question.fromJson(item)));
        return listQuestion;
      } else {
        print("Erro ao carregar lista" + result.toString());
        return null;
      }
    } catch (error, stacktrace) {
      print("Erro ao carregar lista" + stacktrace.toString());
      return null;
    }
  }
}
