import 'dart:io';

String promptString(String text){
  print('$text: ');
  return stdin.readLineSync().toString();
}

double promptDouble(String text) {
  print('$text: ');
  //what's the '?'? So, like typescript, the variable 'number' can be a String or null;
  String? number = stdin.readLineSync();
  return double.parse(number!); //and here, I'm getting the number as string
}