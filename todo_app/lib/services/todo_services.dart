import '../models/todo.dart';

class TodoService {
  final List<Todo> _todos = [];
  int _counter = 0;

// Add a Task
  void addTodo(String title) {
    _counter++;
    _todos.add(Todo(id: _counter, title: title));
  }

//  View All Task
  void listTodo() {
    if (_todos.isEmpty) {
      print("📭 No! Add Todo yet");
    } else {
      _todos.forEach((item) => print(item));
    }
  }

//  Delete a Task
  void deleteATask(int id) {
    _todos.removeWhere((item) => item.id == id);
    print("🗑️ Taks $id is Deleted ");
  }

  // Mark Done of Task
  void markDone(int id) {
    final todo = _todos.firstWhere((item) => item.id == id,
        orElse: () => Todo(id: -1, title: ''));

    if (todo.id != -1) {
      todo.isDone = true;
      print("✅ Marked '${todo.title}' as done.");
    } else {
      print("⚠️ Todo not found!");
    }
  }
}
