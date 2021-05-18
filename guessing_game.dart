import 'util.dart';

void main(){
  String answer = 'Kaguya sama';
  String guess = '';
  bool guessIsIncorrect = guess != answer;
  while (guessIsIncorrect){
    guess = promptString("Enter a guess");
    guessIsIncorrect = guess != answer;
    if (guessIsIncorrect) print('Wrong guess. Try again');
  }
  print('GG! You won!');
}