import 'util.dart';

class MathQuestion {
  String question;
  double answer;

  MathQuestion(this.question, this.answer);
}

void main() {
  List<MathQuestion> questions = [];
  questions.addAll([
    MathQuestion("2 + 2", 4.0),
    MathQuestion("10 - 8", 2.0),
    MathQuestion("20 * 3", 60.0),
    MathQuestion("50 / 2 ", 25.0)
  ]);

  int score = 0;
  questions.forEach((mathQuestion) {
    double answer = promptDouble(mathQuestion.question);
    bool isCorrectAnswer = answer == mathQuestion.answer;
    if (isCorrectAnswer) {
      print("Good! That's right! Correct!");
      score++;
    }else print("Ohh.. That's incorrect. The answer was ${mathQuestion.answer}");
  });
  print('Your score is: $score out of ${questions.length}');
}
