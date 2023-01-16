import 'package:login_app_firebase/models/question_model.dart';

final questionsQuizOne = [
  Question(
    text:
        'Quais são os direitos fundamentais garantidos pela Constituição Brasileira?',
    options: [
      Option(
        text: 'Direito à vida, à educação, à saúde e à propriedade',
        isCorrect: false,
      ),
      Option(
        text: 'Direito à igualdade, à liberdade, à segurança e à propriedade',
        isCorrect: true,
      ),
      Option(
        text: 'Direito à felicidade, à paz, à justiça e à solidariedade',
        isCorrect: false,
      ),
      Option(
        text: 'Direito à alimentação, à moradia, à cultura e à comunicação',
        isCorrect: false,
      )
    ],
  ),
  Question(
    text:
        'Qual é o princípio fundamental que garante a liberdade de expressão?',
    options: [
      Option(
        text: 'Princípio da verdade',
        isCorrect: false,
      ),
      Option(
        text: 'Princípio da legalidade',
        isCorrect: false,
      ),
      Option(
        text: 'Princípio da publicidade',
        isCorrect: false,
      ),
      Option(
        text: 'Princípio da liberdade',
        isCorrect: true,
      )
    ],
  ),
  Question(
    text: 'Qual é a importância da Declaração Universal dos Direitos Humanos?',
    options: [
      Option(
        text:
            'Ela define os direitos fundamentais de todas as pessoas, independentemente de sua nacionalidade, raça, gênero, orientação sexual, religião, etc.',
        isCorrect: true,
      ),
      Option(
        text:
            'Ela define os direitos fundamentais apenas para cidadãos de países desenvolvidos',
        isCorrect: false,
      ),
      Option(
        text:
            'Ela define os direitos fundamentais apenas para cidadãos de países com governos democráticos',
        isCorrect: false,
      ),
      Option(
        text:
            'Ela define os direitos fundamentais apenas para cidadãos de países com governos autoritários',
        isCorrect: false,
      )
    ],
  ),
  Question(
    text: 'O que é a discriminação?',
    options: [
      Option(
        text:
            'Ação ou omissão que causa diferença de tratamento a pessoas com base em raça, gênero, orientação sexual, etc.',
        isCorrect: false,
      ),
      Option(
        text:
            'Ação ou omissão que garante igualdade de tratamento a todas as pessoas',
        isCorrect: false,
      ),
      Option(
        text:
            'Ação ou omissão que garante vantagens para algumas pessoas com base em raça, gênero, orientação sexual, etc.',
        isCorrect: false,
      ),
      Option(
        text:
            'Ação ou omissão que garante desvantagens para algumas pessoas com base em raça, gênero, orientação sexual, etc.',
        isCorrect: true,
      )
    ],
  ),
  Question(
    text: 'O que é a igualdade de gênero?',
    options: [
      Option(
        text:
            'A garantia de que homens e mulheres tenham os mesmos direitos e oportunidades',
        isCorrect: true,
      ),
      Option(
        text: 'A garantia de que homens e mulheres tenham direitos diferentes',
        isCorrect: false,
      ),
      Option(
        text:
            'A garantia de que homens e mulheres tenham oportunidades diferentes',
        isCorrect: false,
      ),
      Option(
        text:
            'A garantia de que homens e mulheres tenham as mesmas responsabilidades',
        isCorrect: false,
      )
    ],
  )
];
