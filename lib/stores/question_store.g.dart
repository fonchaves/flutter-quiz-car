// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$QuestionStore on _QuestionStoreBase, Store {
  final _$listQuestionAtom = Atom(name: '_QuestionStoreBase.listQuestion');

  @override
  ObservableList<Question> get listQuestion {
    _$listQuestionAtom.reportRead();
    return super.listQuestion;
  }

  @override
  set listQuestion(ObservableList<Question> value) {
    _$listQuestionAtom.reportWrite(value, super.listQuestion, () {
      super.listQuestion = value;
    });
  }

  final _$loadQuestionsAsyncAction =
      AsyncAction('_QuestionStoreBase.loadQuestions');

  @override
  Future loadQuestions() {
    return _$loadQuestionsAsyncAction.run(() => super.loadQuestions());
  }

  @override
  String toString() {
    return '''
listQuestion: ${listQuestion}
    ''';
  }
}
