import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];

  //reference our box
  final _toDoBox = Hive.box("TodoBox");

  //Run this method if the app is openend for the first time
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  //Load the data from database
  void loadData() {
    toDoList = _toDoBox.get("TODOLIST");
  }

  //Update the database
  void updateDatabase() {
    _toDoBox.put("TODOLIST", toDoList); 
  }
}
