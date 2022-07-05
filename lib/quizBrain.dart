import 'questions.dart';

class QuizBrain {
  int _questionNum = 0;
  final List<Question> _allQuestions = [
    Question(
        'Java programming is not statically-typed, means all variables should not first be declared before they can be used.',
        false),
    Question(
        'Declarations must appear at the start of the body of a Java method.',
        false),
    Question(
        'The operations y >> 3 and y >>> 3 produce the same result when y > 0.',
        true),
    Question('The "switch" selection structure must end with the default case.',
        false),
    Question(
        'A break statement must always be present in the default case of a "switch" selection structure.',
        false),
    Question(
        'Objects of a subclass can be assigned to a super class reference.',
        true),
    Question(
        ' An array in the Java programming language has the ability to store many different types of values.',
        false),
    Question(
        'The == operator can be used to compare two String objects. The result is always true if the two strings are identical.',
        false),
    Question(
        'If you override a method without specifying the @Override compiler annotation, the Javacompiler will issue a warning message.',
        false),
    Question('Every class I create in Java is actually a sub-class', true),
   
  ];

  void nextQustion() {
    if (_questionNum < _allQuestions.length - 1) {
      _questionNum++;
    }
  }

  String getQuestionText() {
    return _allQuestions[_questionNum].questionsText;
  }

  bool getQuestionAns() {
    return _allQuestions[_questionNum].questionAnswer;
  }

  bool isFinished() {
    if (_questionNum >= _allQuestions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNum = 0;
  }
}
