void main(){
  String greeting = "Hey there!";
  //index =          0123456789

  // also we don't need the ${} just put $ and should be fine
  print('$greeting Whats up?');

  // but when we need to concatenate or use functions, whe should be use the ${}
  print('${greeting + ' Whats up?'}');

  //index 8 = e
  print(greeting[8]); //expected: e

  //length = 0 to 9 equals to 10
  print(greeting.length); //then expected: 10

  //functions
  String text = 'hello';
  print(text.toUpperCase()); // HELLO
  print(text.toLowerCase()); // hello
  print(text[0].toUpperCase() + text.substring(1).toLowerCase()); //Hello
  print(text.indexOf("e")); // 1
  print(text.contains("e")); // true
  print(text.contains("987")); // false

  String anotherText = ' world';
  print(text + anotherText); //hello world!
}
