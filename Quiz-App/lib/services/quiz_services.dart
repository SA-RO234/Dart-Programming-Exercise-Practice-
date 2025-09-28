import '../models/question.dart';
import '../utils/input_helper.dart';

class QuizService {
  final List<Question> questions;
  int score = 0;
  QuizService(this.questions);
  Future<void> start() async {
    print("\t ==== Welcome to the Quiz App ! ====\n");
    for (int i = 0; i < questions.length; i++) {
      final Question q = questions[i];
      print("\n Question ${i + 1}: ${q.question}");
      for (int j = 0; j < q.options.length; j++) {
        print("${j + 1}.${q.options[j]}"); 
      }

      int answer = InputHelper.readInt("Your Answer :", 1, q.question.length);
      if (answer - 1 == q.correctIndex) {
        print("✅ Correct !");
        score++;
      } else {
        print("❌ Wrong ! Correct Answer: ${q.options[q.correctIndex]}");
      }
    }
    print("\n🎉 Quiz Finished!, Your Score : $score/${questions.length}");
  }
}
