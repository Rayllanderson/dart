import 'dart:io'; //library responsible for taking user input

void main(){
  print('What is your name?');
  String username = stdin.readLineSync().toString(); // the returns always be string;
  print('Hello, $username!');
}