import 'question.dart';

class QuizBrain {
  int _qstNum = 0;

  List<Question> _questionBank = [
    Question(1, 'Grapes'),
    Question(2, 'Guava'),
    Question(3, 'Orange'),
    Question(4, 'Green Apple'),
    Question(5, 'Strawberry'),
    Question(6, 'Cherry'),
    Question(7, 'Apple'),
    Question(8, 'Blackberry'),
    Question(9, 'Melon')
  ];

  int nextQuestion() {
    if (_qstNum < _questionBank.length - 1) {
      _qstNum++;
    }
  }

  int getImage() {
    return _qstNum + 1;
  }

  String getCorrectAns() {
    return _questionBank[_qstNum].ans;
  }

  String getWrongAns() {
    return _questionBank[_qstNum + 1].ans;
  }
}
