import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz_manger.dart';
import 'package:quiz_app/screen/result_screen.dart';
import 'package:quiz_app/theme/app_decorations.dart';
import 'package:quiz_app/widgets/custom_back_buttion.dart';
import 'package:quiz_app/widgets/custom_next_buttion.dart';
import 'package:quiz_app/widgets/question_item.dart';

class QuizView extends StatefulWidget {
  const QuizView({super.key});

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  QuizManager quizManager = QuizManager();
  PageController pageController = PageController();
  int pageIndex = 0;
  @override
  void dispose() {
    PageController().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: AppDecorations.mainBackgroundDecoration,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    onPageChanged: (index) {
                      pageIndex = index;
                      setState(() {});
                    },
                    controller: pageController,
                    itemCount: QuizManager().questions.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: QuestionItem(
                          questionModel: QuizManager().questions[index],
                          quizManager: quizManager,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Visibility(
                        visible: pageIndex != 0,
                        child: CustomBackButton(
                          pageController: pageController,
                          pageIndex: pageIndex,
                        ),
                      ),
                      Spacer(),
                      CustomNextButton(
                        pageController: pageController,
                        pageCount: quizManager.questions.length,
                        currentIndex: pageIndex,
                        onFinish: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  ResultScreen(quizManager: quizManager),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 55),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
