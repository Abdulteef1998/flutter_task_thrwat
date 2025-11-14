// ignore_for_file: public_member_api_docs, sort_constructors_first
class QuestionModel {
  final String title;
  final String questionNumber;
  final List<String> options;
  final String image;
  String selectedAnswer = '';
  final String correctAnswer;

  QuestionModel({
    required this.title,
    required this.questionNumber,
    required this.options,
    required this.image,
    required this.correctAnswer,
  });
  bool isCorrectAnswer() {
    return selectedAnswer == correctAnswer;
  }

  void updateSelectedAnswer(String answer) {
    selectedAnswer = answer;
  }
}
