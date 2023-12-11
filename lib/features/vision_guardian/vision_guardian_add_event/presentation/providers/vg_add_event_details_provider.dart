
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddEventDetailsNotifier extends ChangeNotifier {
  
  

  // Let's allow the UI to add todos.
  // void addTodo(Todo todo) {
  //   // todos.add(todo);
  //   notifyListeners();
  // }

  // // Let's allow removing todos
  // void removeTodo(String todoId) {
  //   todos.remove(todos.firstWhere((element) => element.id == todoId));
  //   notifyListeners();
  // }

  // // Let's mark a todo as completed
  // void toggle(String todoId) {
  //   final todo = todos.firstWhere((todo) => todo.id == todoId);
  //   todo.completed = !todo.completed;
  //   notifyListeners();
  // }
}

// Finally, we are using ChangeNotifierProvider to allow the UI to interact with
// our TodosNotifier class.
final addEventDetailsProvider = ChangeNotifierProvider<AddEventDetailsNotifier>((ref) {
  return AddEventDetailsNotifier();
});