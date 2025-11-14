import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app/model/question_model.dart';
import 'package:quiz_app/theme/app_text_style.dart';

class QuestionItemHeader extends StatelessWidget {
  const QuestionItemHeader({super.key, required this.questionModel});

  final QuestionModel questionModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: const Color(0xFFB08BFF),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFB882FF)),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
          SvgPicture.asset(questionModel.image),
          Text(
            'Question ${questionModel.questionNumber}',
            style: AppTextStyle.regular12(),
          ),
        ],
      ),
    );
  }
}
