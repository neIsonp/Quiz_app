import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../components/quiz_component.dart';
import '../../data/dummy_data.dart';

class QuizThree extends StatelessWidget {
  const QuizThree({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizComponent(
      quizList: questionQuizThree,
      title: "Direitos de família e crianças",
      numberQuiz: 3,
    );
  }
}
