import 'package:mobx/mobx.dart';
import 'package:quizcar/models/question_model.dart';
import 'package:quizcar/repositories/question_repository.dart';
part 'question_store.g.dart';

class QuestionStore = _QuestionStoreBase with _$QuestionStore;

abstract class _QuestionStoreBase with Store {
  QuestionRepository _questionRepository;

  _QuestionStoreBase() {
    _questionRepository = QuestionRepository();
  }

  @observable
  ObservableList<Question> listQuestion;

  @action
  loadQuestions() async {
    listQuestion = ObservableList<Question>.of(
        await _questionRepository.getAllQuestions());
  }
}
