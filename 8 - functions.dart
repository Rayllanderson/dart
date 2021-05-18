
void main(){
  drawTriangule();
  print(sum(1, 4));
  sayHiTo("Ray");
  sayHiTo("Daniel dj");
}

void drawTriangule(){
  print(' _');
  print('/_\\');
}

void sayHiTo(String name){
  print('Hi, $name!');
}

double sum(double number1, number2){
  return number1 + number2;
}