import 'dart:math';

void main(){
  int quantity = 300;
  double price = 5.99;

 // "quantity = quantity + 50" is equals to "quantity += 50"
 // quantity = quantity + 50; // 350
  quantity += 50; //350

  //"quantity++" is equals to "quantity += 50" or "quantity = quantity + 1;"
  quantity++; //351

  print(quantity);
  print(min(quantity, price)); // which one of these is smaller? "Returns the lesser of two numbers"
  print(sqrt(9)); //square root as double value
}