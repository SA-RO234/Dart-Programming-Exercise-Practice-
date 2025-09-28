import 'dart:convert';
import 'dart:io';
import '../models/question.dart';

class QuestionRepository {
  Future<List<Question>> fetchQuestionFromFile(String path) async {
    try {
      final File file = File(path);
      final String content = await file.readAsString();
      final dynamic data = jsonDecode(content) as List<dynamic>;

      return data.map((item) => Question(
              question: item['question'],
              options: List<String>.from(item['options']),
              correctIndex: item['correctIndex']))
          .toList();
    } catch (e) {
      print("Error reading Question ! $e");
      return [];
    }
  }
}
