import 'dart:html';

InputElement? toDoInput;
UListElement? toDoList;
ButtonElement? deleteAllButton;
ButtonElement? addToList;

//Comando pra transformar Dart para JS -> dart2js -O2 -o main.dart.js main.dart

void main() {
  //recuperando e setando os valores
  toDoInput = querySelector('#to-do-input') as InputElement;
  toDoList = querySelector('#to-do-list') as UListElement;
  addToList = querySelector('#to-do-button') as ButtonElement;
  deleteAllButton = querySelector('#delete-all-button') as ButtonElement;

  hideDeleteAllButton();

  //adicionando listener nos respectivos objetos
  addToList!.onClick.listen(addToDoItem);
  deleteAllButton!.onClick.listen(deleteAllItems);
}

void addToDoItem(Event e) {
  LIElement newToDo = new LIElement(); //criando um novo elemento <li>
  newToDo.className = "list-group-item"; //setando className

  newToDo.text = toDoInput!.value; //pegando valor do input e setando o valor no <li>

  ButtonElement deleteToDoButton = createDeleteItemButton(); //criando botão de delete
  //adicionando um listener para o botão, assim que for clicado, realizará a ação abaixo.
  deleteToDoButton.onClick.listen((e) {
    newToDo.remove(); //remove ele mesmo
    bool listIsEmpty = toDoList!.children.isEmpty;
    if(listIsEmpty) hideDeleteAllButton(); //caso a lista esteja vazia, esconder botão de delete All
  });

  newToDo.children.add(deleteToDoButton); //adicionando o botão ao elemento <li>

  toDoInput!.value = ''; // limpando o valor do input

  toDoList!.children.add(newToDo); // adicionando o novo elemento <li> na Todo list <ul>
  showDeleteAllButton(); //mostrando o botão de limpar lista
}

ButtonElement createDeleteItemButton() {
  ButtonElement? deleteItemButton = new ButtonElement(); // criando um botão
  deleteItemButton.className = 'ms-2 btn btn-danger btn-sm'; //setando className
  deleteItemButton.text = 'X'; // setando texto
  return deleteItemButton;
}

void deleteAllItems(Event e) {
  toDoList!.children.clear();
  hideDeleteAllButton();
}

void hideDeleteAllButton() {
  deleteAllButton!.className = 'btn btn-danger hide';
}

void showDeleteAllButton() {
  deleteAllButton!.className = 'btn btn-danger show';
}