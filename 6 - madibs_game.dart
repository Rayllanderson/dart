import 'dart:io';

void main() {
  print('Enter a color:');
  String color = stdin.readLineSync().toString();

  print('Enter a plural noun:');
  String pluralNoun = stdin.readLineSync().toString();

  print('Enter an anime:');
  String animeName = stdin.readLineSync().toString();

  print('Roses are $color');
  print('$pluralNoun are blue');
  print("and I love $animeName");
}