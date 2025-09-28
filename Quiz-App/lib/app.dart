import './repositories/question_repository.dart';
import './services/quiz_services.dart';
import './models/question.dart';

class QuizApp {
  static Future<void> start() async {
    final QuestionRepository repo = QuestionRepository();
    //   Load Question asynchronously from JSON
    final List<Question> questions = await repo.fetchQuestionFromFile("./data/question.json");
    final QuizService service = QuizService(questions);
    await service.start();
  }
}
