import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../components/quiz_component.dart';
import '../../data/dummy_data.dart';

class QuizFive extends StatelessWidget {
  const QuizFive({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizComponent(
      quizList: questionQuizFive,
      title: "Direitos das pessoas idosas",
    );
  }
}
