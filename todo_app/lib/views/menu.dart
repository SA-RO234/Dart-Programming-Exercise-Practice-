import 'dart:io';
import '../services/todo_services.dart';
import '../utils/input_helper.dart';

void runMenu() {
  final service = TodoService();
  while (true) {
    print("\n ===== 📝 TODO APP =====");
    print("1. Add Todo");
    print("2. List Todo");
    print("3. Mark Todo as Done");
    print("4. Delete Todo");
    print("0. Exit ");

    int choose = readInt("Plese Choose : ");
    switch (choose) {
      case 1:
        {
          clearScreen();
          final title = readInput("Enter Task Title : ");
          service.addTodo(title);
          break;
        }
      case 2:
        {
          clearScreen();
          service.listTodo();
          break;
        }
      case 3:
        {
          clearScreen();
          final id = readInt("Enter Task ID : ");
          service.markDone(id);
          break;
        }
      case 4:
        {
          clearScreen();
          final id = readInt("Enter Task ID for Delete : ");
          service.deleteATask(id);
          break;
        }
      case 0:
        {
          print("👋 Goodbye!");
          exit(0);
        }
      default:
        print("⚠️ Invalid choice! Try again.");
    }
  }
}
