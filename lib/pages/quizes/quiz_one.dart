import 'package:flutter/material.dart';
import 'package:login_app_firebase/components/quiz_component.dart';
import 'package:login_app_firebase/data/dummy_data.dart';

class QuizOne extends StatelessWidget {
  const QuizOne({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizComponent(
      quizList: questionsQuizOne,
      title: "Direitos civis e liberdades",
    );
  }
}
