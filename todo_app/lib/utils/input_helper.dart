import 'dart:io';

String readInput(String prompt) {
  stdout.write(prompt);
  String? result = stdin.readLineSync();
  return result!;
}

int readInt(String prompt) {
  stdout.write(prompt);
  return int.tryParse(stdin.readLineSync()!) ?? -1;
}

void clearScreen() {
  print('\x1B[2J\x1B[0;0H');
}
