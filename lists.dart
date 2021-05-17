void main() {
  List<int> favoritesNumbers = [1, 7, 13, 15, 21, 100];

  print('My favorites numbers are $favoritesNumbers');
  print('The size of my list of favorites numbers is: ${favoritesNumbers.length}');
  print('And, the first number I like the most is: ${favoritesNumbers[0]}');

  favoritesNumbers[3] = 17;
  print('Oops! I lied! In the truth, my favorites numbers are: $favoritesNumbers');

  print('The sum of my first favorite number with my last favorite number is: '
      '${favoritesNumbers[0] + favoritesNumbers[favoritesNumbers.length - 1]}');

  print("Well, I think I'm in love with the 69 number. Guess I'll add to my favorites numbers...");
  favoritesNumbers.add(69);
  print('I added! Check it out: $favoritesNumbers');

  int numberToBeRemoved = favoritesNumbers[3];
  print("I don't think I like the number $numberToBeRemoved anymore... I think i'll remove he...");
  favoritesNumbers.remove(numberToBeRemoved);
  print('I remove he! Sayonara, $numberToBeRemoved. Check the list now: $favoritesNumbers');

  print("What?! You don't believe in me? You think i haven't removed the $numberToBeRemoved?");
  print("Well, then.. Hey, Dart! Tell them i removed de $numberToBeRemoved from my list...");
  print("Hello! I'm Dart! computing... ... ... ");
  bool numberExistsOnList = favoritesNumbers.contains(numberToBeRemoved);
  if(numberExistsOnList)
    print('He is lying! The number is on the list!');
  else
    print("He didn't lied! The number not exists on the favorites numbers list");
}
