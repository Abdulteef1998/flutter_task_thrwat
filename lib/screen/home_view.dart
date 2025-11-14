import 'package:flutter/material.dart';
import 'package:quiz_app/assest.dart';
import 'package:quiz_app/screen/quiz_view.dart';
import 'package:quiz_app/theme/app_decorations.dart';
import 'package:quiz_app/theme/app_text_style.dart';
import 'package:quiz_app/widgets/buttion.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: AppDecorations.mainBackgroundDecoration,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(Assest.gradinet, fit: BoxFit.fitHeight),
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text('Good Morning', style: AppTextStyle.regular16()),
                    SizedBox(height: 8),
                    Text(
                      'New Topic is Waiting!',
                      style: AppTextStyle.medium24(),
                    ),
                    Spacer(),
                    Image.asset(
                      Assest.logopng,
                      height: MediaQuery.of(context).size.width,
                    ),
                    Spacer(),
                    CustomButton(
                      text: 'Start Quizz',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QuizView()),
                        );
                      },
                    ),
                    SizedBox(height: 60),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
