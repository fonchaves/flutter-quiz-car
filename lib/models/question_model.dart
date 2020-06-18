class Question {
  int id;
  String question;
  List<String> options;
  String correctQuestion;
  String knowMore;

  Question(
      {this.id,
      this.question,
      this.options,
      this.correctQuestion,
      this.knowMore});

  Question.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    question = json['Question'];
    options = json['Options'].cast<String>();
    correctQuestion = json['CorrectQuestion'];
    knowMore = json['KnowMore'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Question'] = this.question;
    data['Options'] = this.options;
    data['CorrectQuestion'] = this.correctQuestion;
    data['KnowMore'] = this.knowMore;
    return data;
  }
}
