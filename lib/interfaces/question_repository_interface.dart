import 'package:quizcar/models/question_model.dart';

abstract class IQuestionRepository {
  Future<List<Question>> getAllQuestions();
}
