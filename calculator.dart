import 'dart:io';

void main() {
  try {
    print('Calculator 1.0 made with dart!');
    print("Let's sum two numbers!");
    print('Enter the first number:');
    double firstNumber = double.parse(stdin.readLineSync().toString());
    print('Ok, tell me now the second number:');
    double secondNumber = double.parse(stdin.readLineSync().toString());
    double sum = firstNumber + secondNumber;
    print('Alright, I have the numbers!');
    print('computing...');
    sleep(Duration(seconds: 1));
    print('The sum is $sum');
  } catch (Exception) {
    print("You probably didn't enter a number");
  }
}
