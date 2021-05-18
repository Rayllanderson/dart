void main() {
  List<String> friends = ['Daniel dj', 'Kaguya sama', 'Luffy', 'Sanji'];

  //normal
  for (int i = 0; i < friends.length; i++){
    print(friends[i]);
  }

  //like for each in Java
  for (String friend in friends) {
    print(friend);
  }

  //using lambda
  friends.forEach((friend) {
    print(friend);
  });
}
