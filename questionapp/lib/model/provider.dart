import 'package:flutter/cupertino.dart';
import 'package:questionapp/data/correctanswer.dart';
import 'package:questionapp/data/numbercount.dart';
import 'package:questionapp/data/option.dart';
import 'package:questionapp/data/question.dart';
//import 'package:questionapp/pages/quizpage.dart';

class ProviderDemo extends ChangeNotifier {
  int _questionNumber = 0;
  int _count = 0;
  List<Question> _questionBank = [
    Question(' Which of the following is the first calculating device?'),
    Question(' One kilobyte is equal to:?'),
    Question(' How the quality of printer is measured?'),
    Question('  Which of the following is also called translator?'),
    Question(' Select the example of application software of computer:'),
    Question(' Which of the following is not an example of Operating System?'),
    Question(' Who is build Flutter Provider Package?'),
    Question(
        ' Who among the following used the term computer worm for the first time?'),
    Question(
        ' Who among the following considered as the father of artificial intelligence?'),
    Question(' Who invented mechanical calculator called Pascaline?'),
  ];

  List<Option> _answerBrain = [
    Option(text: 'Abacus', isCorrect: true),
    Option(text: '1000 bytes', isCorrect: false),
    Option(text: ' Alphabet per strike', isCorrect: false),
    Option(text: 'MS Dos', isCorrect: false),
    Option(text: 'MS Word', isCorrect: true),
    Option(text: 'Windows 98', isCorrect: false),
    Option(text: 'Jeff Bezzoz', isCorrect: false),
    Option(text: 'John Brunner', isCorrect: true),
    Option(text: 'Charles Babbage', isCorrect: false),
    Option(text: 'Pascaline', isCorrect: false),
  ];

  List<Option> _answerTwo = [
    Option(text: 'Calculator', isCorrect: false),
    Option(text: '100 bytes', isCorrect: false),
    Option(text: 'Words per Inch', isCorrect: false),
    Option(text: 'Data representation', isCorrect: false),
    Option(text: 'Ram', isCorrect: false),
    Option(text: ' Microsoft Office XP', isCorrect: true),
    Option(text: 'Elson Berg', isCorrect: false),
    Option(text: 'Alan Turing', isCorrect: false),
    Option(text: 'Lee De Forest', isCorrect: false),
    Option(text: 'Blaise plascal', isCorrect: true),
  ];

  List<Option> _answerThree = [
    Option(text: 'Turing Machine', isCorrect: false),
    Option(text: '1024 bytes', isCorrect: true),
    Option(text: 'Dots per Inch', isCorrect: true),
    Option(text: ' Operating System', isCorrect: false),
    Option(text: 'Internet', isCorrect: false),
    Option(text: 'BSD Unix ', isCorrect: false),
    Option(text: 'Akhil', isCorrect: false),
    Option(text: 'John McCarthy', isCorrect: false),
    Option(text: ' John McCarthy', isCorrect: true),
    Option(text: 'Alan Turing', isCorrect: false),
  ];

  List<Option> _answerFour = [
    Option(text: 'Pascaline', isCorrect: false),
    Option(text: '1023 bytes', isCorrect: false),
    Option(text: 'Strike per Inch', isCorrect: false),
    Option(text: 'Language Processor', isCorrect: true),
    Option(text: 'Ms Dos', isCorrect: false),
    Option(text: 'Red Hat Linux', isCorrect: false),
    Option(text: ' Remi Russelet', isCorrect: true),
    Option(text: ' JP Eckert', isCorrect: false),
    Option(text: ' JP Eckert', isCorrect: false),
    Option(text: 'Lee De Forest', isCorrect: false),
  ];

  List<Number> _scoreKeeper = [
    Number('Question:1'),
    Number('Question:2'),
    Number('Question:3'),
    Number('Question:4'),
    Number('Question:5'),
    Number('Question:6'),
    Number('Question:7'),
    Number('Question:8'),
    Number('Question:9'),
    Number('Question:10'),
  ];

  List<Correct> _finalScore = [
    Correct('Total Score:1'),
    Correct('Total Score:2'),
    Correct('Total Score:3'),
    Correct('Total Score:4'),
    Correct('Total Score:5'),
    Correct('Total Score:6'),
    Correct('Total Score:7'),
    Correct('Total Score:8'),
    Correct('Total Score:9'),
    Correct('Total Score:10'),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      if (_questionNumber < _answerBrain.length - 1) {}
      if (_questionNumber < _answerTwo.length - 1) {}
      if (_questionNumber < _answerThree.length - 1) {}
      if (_questionNumber < _answerFour.length - 1) {}

      if (_questionNumber < _scoreKeeper.length - 1) {
        _questionNumber++;
      }
      notifyListeners();
    }
  }

  String getText() {
    return _questionBank[_questionNumber].questionText;
    notifyListeners();
  }

  String getAnswer() {
    return _answerBrain[_questionNumber].text;
    notifyListeners();
  }

  String getTwo() {
    return _answerTwo[_questionNumber].text;
    notifyListeners();
  }

  String getThree() {
    return _answerThree[_questionNumber].text;
    notifyListeners();
  }

  String getFour() {
    return _answerFour[_questionNumber].text;
    notifyListeners();
  }

  String getNumber() {
    return _scoreKeeper[_questionNumber].numberText;
    notifyListeners();
  }

  String getFinal() {
    return _finalScore[_count].correctAnser;
    notifyListeners();
  }

  bool getCorrectAnswer() {
    return _answerBrain[_count].isCorrect;
    notifyListeners();
  }

  bool getCorrectTwo() {
    return _answerTwo[_count].isCorrect;
    notifyListeners();
  }

  bool getCorrectThree() {
    return _answerThree[_count].isCorrect;
    notifyListeners();
  }

  bool getCorrectFour() {
    return _answerFour[_count].isCorrect;
    notifyListeners();
  }

  void checkAnwser(bool userPickedAnswer) {
    bool correctAnswer = getCorrectFour();
    bool secondCorrect = getCorrectAnswer();
    bool thirdCorrect = getCorrectThree();
    bool fourthCorrect = getCorrectTwo();

    if (userPickedAnswer == correctAnswer) {}
    if (userPickedAnswer == secondCorrect) {}
    if (userPickedAnswer == thirdCorrect) {}
    if (userPickedAnswer == fourthCorrect) {
    } else {
      null;
    }
    notifyListeners();
  }
}
