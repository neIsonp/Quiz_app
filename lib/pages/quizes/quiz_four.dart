import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../components/quiz_component.dart';
import '../../data/dummy_data.dart';

class QuizFour extends StatelessWidget {
  const QuizFour({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizComponent(
      quizList: questionQuizFour,
      title: "Direitos das mulheres",
    );
  }
}
