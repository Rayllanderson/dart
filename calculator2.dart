import 'dart:io';

void main() {
  print('Calculator 2.0');
  double number1 = promptDouble('Number one');
  double number2 = promptDouble('Number two');
  printMenuOptions();
  int menuOption = getMenuOption();

  switch(menuOption){
    case 1:
      printSum(number1, number2);
      break;
    case 2:
      printSubtraction(number1, number2);
      break;
    case 3:
      printMultiplication(number1, number2);
      break;
    case 4:
      printDivision(number1, number2);
      break;
    default:
      print('Choose a valid menu option.');
  }
}

double promptDouble(String text) {
  print('$text: ');
  //what's the '?'? So, like typescript, the variable 'number' can be a String or null;
  String? number = stdin.readLineSync();
  return double.parse(number!); //and here, I'm getting the number as string
}

void printMenuOptions() {
  print('What do you want to do?');
  print('[ 1 ] - Sum');
  print('[ 2 ] - Subtract');
  print('[ 3 ] - Multiply');
  print('[ 4 ] - Divide');
}

int getMenuOption() {
  return int.parse(stdin.readLineSync()!);
}

void printSum(double number1, number2) {
  print(number1 + number2);
}

void printSubtraction(double number1, number2) {
  print(number1 - number2);
}

void printMultiplication(double number1, number2) {
  print(number1 * number2);
}

void printDivision(double number1, number2) {
  print(number1 / number2);
}
