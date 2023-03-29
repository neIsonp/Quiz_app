import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login_app_firebase/data/dummy_data.dart';

import '../../components/quiz_component.dart';

class QuizTwo extends StatelessWidget {
  const QuizTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizComponent(
      quizList: questionQuizTwo,
      title: "Direitos económicos, sociais e culturais",
    );
  }
}
