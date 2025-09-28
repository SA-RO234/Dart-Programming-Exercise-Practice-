import 'dart:io';
class InputHelper {
  static int readInt(String prompt, int min, int max) {
    int? value;
    do {
      stdout.write(prompt);
      final input = stdin.readLineSync();
      if (input != null) {
        value = int.tryParse(input);
      }
    } while (value == null || value < min || value > max);
    return value;
  }
}
