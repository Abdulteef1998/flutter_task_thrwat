import 'package:quiz_app/assest.dart';
import 'package:quiz_app/model/question_model.dart';

class QuizManager {
  final List<QuestionModel> _questions = [
    QuestionModel(
      title:
          'How would you describe your level of satisfaction with the healthcare system?',
      questionNumber: '1',
      options: ['Strongly satisfied', 'Satisfied', 'Neutral', 'Not satisfied'],
      image: Assest.q1,
      correctAnswer: 'Strongly satisfied',
    ),
    QuestionModel(
      title: 'How often do you exercise during the week?',
      questionNumber: '2',
      options: ['Every day', '3-5 times', '1-2 times', 'Rarely'],
      image: Assest.q2,
      correctAnswer: 'Every day',
    ),
    QuestionModel(
      title: 'How would you rate your current diet?',
      questionNumber: '3',
      options: [
        'Very healthy',
        'Moderately healthy',
        'Not healthy',
        'Unhealthy',
      ],
      image: Assest.q3,
      correctAnswer: 'Very healthy',
    ),
    QuestionModel(
      title: 'How many hours of sleep do you get on average per night?',
      questionNumber: '4',
      options: ['7-8 hours', '5-6 hours', '3-4 hours', 'Less than 3 hours'],
      image: Assest.q4,
      correctAnswer: '7-8 hours',
    ),
  ];

  List<QuestionModel> get questions => _questions;

  int calculateCorrectAnswers() {
    return _questions.where((q) => q.selectedAnswer == q.correctAnswer).length;
  }

  int calculateScore100() {
    return ((calculateCorrectAnswers() / _questions.length) * 100).round();
  }

  String getLevel() {
    int score = calculateScore100();

    if (score >= 90) return "Excellent";
    if (score >= 70) return "Good";
    if (score >= 50) return "Average";
    return "Poor";
  }
}
