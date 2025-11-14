import 'package:flutter/material.dart';
import 'package:quiz_app/model/question_model.dart';
import 'package:quiz_app/model/quiz_manger.dart';
import 'package:quiz_app/widgets/option_litem.dart';

class OptionsList extends StatefulWidget {
  const OptionsList({
    super.key,
    required this.questionModel,
    required this.quizManager,
  });

  final QuestionModel questionModel;
  final QuizManager quizManager;

  @override
  State<OptionsList> createState() => _OptionsListState();
}

class _OptionsListState extends State<OptionsList>
    with AutomaticKeepAliveClientMixin {
  int selectedIndex = -1;
  String selectedAnswer = "";

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Expanded(
      child: ListView.builder(
        itemCount: widget.questionModel.options.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              selectedIndex = index;
              selectedAnswer = widget.questionModel.options[index];
              widget.questionModel.updateSelectedAnswer(selectedAnswer);
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: OptionLitem(
                isSelected: selectedIndex == index,
                option: widget.questionModel.options[index],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
