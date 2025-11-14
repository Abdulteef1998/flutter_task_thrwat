import 'package:flutter/material.dart';
import 'package:quiz_app/model/question_model.dart';
import 'package:quiz_app/model/quiz_manger.dart';
import 'package:quiz_app/theme/app_text_style.dart';
import 'package:quiz_app/widgets/options_list.dart';
import 'package:quiz_app/widgets/question_header_widget.dart';

class QuestionItem extends StatelessWidget {
  final QuestionModel questionModel;
  final QuizManager quizManager;

  const QuestionItem({
    super.key,
    required this.questionModel,
    required this.quizManager,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionItemHeader(questionModel: questionModel),

        const SizedBox(height: 16),

        Text(questionModel.title, style: AppTextStyle.medium24()),

        const SizedBox(height: 32),

        OptionsList(questionModel: questionModel, quizManager: quizManager),
      ],
    );
  }
}
