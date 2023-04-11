import 'package:login_app_firebase/models/question_model.dart';

final questionsQuizOne = [
  Question(
    text:
        'Quais são os direitos fundamentais garantidos pela Constituição Portuguesa?',
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

final questionQuizTwo = [
  Question(
    text: 'O que são direitos econômicos?',
    options: [
      Option(
        text:
            'São direitos que garantem a todos o acesso a recursos econômicos, como trabalho, moradia, alimentação e saúde.',
        isCorrect: true,
      ),
      Option(
        text:
            'São direitos que garantem a liberdade de expressão e de associação.',
        isCorrect: false,
      ),
      Option(
        text: 'São direitos que garantem a todos a liberdade de religião.',
        isCorrect: false,
      ),
      Option(
        text: 'São direitos que garantem a todos a igualdade perante a lei.',
        isCorrect: false,
      )
    ],
  ),
  Question(
    text: 'O que são direitos sociais?',
    options: [
      Option(
        text:
            'São direitos que garantem a liberdade de expressão e de associação.',
        isCorrect: false,
      ),
      Option(
        text: 'São direitos que garantem a todos a liberdade de religião.',
        isCorrect: false,
      ),
      Option(
        text: 'São direitos que garantem a todos a igualdade perante a lei.',
        isCorrect: false,
      ),
      Option(
        text:
            'São direitos que garantem a todos a igualdade de oportunidades, acesso à educação e à cultura, lazer e segurança.',
        isCorrect: true,
      ),
    ],
  ),
  Question(
    text: 'O que são direitos culturais?',
    options: [
      Option(
        text:
            'São direitos que garantem a todos o acesso e participação na vida cultural, como as artes, o patrimônio cultural e as tradições.',
        isCorrect: true,
      ),
      Option(
        text:
            'São direitos que garantem a liberdade de expressão e de associação.',
        isCorrect: false,
      ),
      Option(
        text: 'São direitos que garantem a todos a liberdade de religião.',
        isCorrect: false,
      ),
      Option(
        text: 'São direitos que garantem a todos a igualdade perante a lei.',
        isCorrect: false,
      )
    ],
  ),
  Question(
    text: 'Qual é a importância dos direitos econômicos, sociais e culturais?',
    options: [
      Option(
        text:
            'Eles são importantes apenas para pessoas que vivem em países desenvolvidos.',
        isCorrect: false,
      ),
      Option(
        text:
            'Eles garantem a dignidade e o bem-estar das pessoas, promovendo a igualdade social e a justiça.',
        isCorrect: true,
      ),
      Option(
        text:
            'Eles são importantes apenas para pessoas que têm acesso à educação e à cultura.',
        isCorrect: false,
      ),
      Option(
        text:
            'Eles são importantes apenas para pessoas que têm recursos financeiros.',
        isCorrect: false,
      ),
    ],
  ),
  Question(
    text:
        'Quais são as consequências da violação dos direitos econômicos, sociais e culturais?',
    options: [
      Option(
        text:
            'As violações podem levar à pobreza, exclusão social, desigualdade, fome, doenças e falta de acesso à educação e à cultura.',
        isCorrect: true,
      ),
      Option(
        text:
            'As violações não têm consequências graves, já que esses direitos não são tão importantes quanto os direitos civis e políticos.',
        isCorrect: false,
      ),
      Option(
        text:
            'As violações podem levar apenas a sanções internacionais, mas não afetam diretamente as pessoas afetadas.',
        isCorrect: false,
      ),
      Option(
        text:
            'As violações podem levar à diminuição dos direitos civis e políticos, mas não afetam diretamente os direitos econômicos, sociais e culturais.',
        isCorrect: false,
      )
    ],
  ),
];

final questionQuizThree = [
  Question(
    text: 'O que é a Convenção sobre os Direitos da Criança?',
    options: [
      Option(
        text:
            'É um tratado internacional que define os direitos das crianças em áreas como saúde, educação, proteção contra violência e exploração, e igualdade de gênero.',
        isCorrect: true,
      ),
      Option(
        text:
            'É uma declaração unilateral emitida por um país para proteger os direitos das crianças apenas em seu território.',
        isCorrect: false,
      ),
      Option(
        text:
            'É um tratado internacional que define os direitos das crianças, mas apenas em relação à sua família.',
        isCorrect: false,
      ),
      Option(
        text:
            'É um tratado internacional que define os direitos das crianças, mas apenas em relação à sua educação.',
        isCorrect: false,
      )
    ],
  ),
  Question(
    text:
        'Qual é a idade mínima para o trabalho infantil, segundo a Convenção sobre os Direitos da Criança?',
    options: [
      Option(
        text: '16 anos',
        isCorrect: false,
      ),
      Option(
        text: '15 anos',
        isCorrect: false,
      ),
      Option(
        text: '14 anos',
        isCorrect: true,
      ),
      Option(
        text: '13 anos',
        isCorrect: false,
      )
    ],
  ),
  Question(
    text: 'O que é a guarda compartilhada?',
    options: [
      Option(
        text:
            'É uma forma de guarda em que ambos os pais têm igual responsabilidade e autoridade em relação à criação dos filhos, mesmo que eles não morem juntos.',
        isCorrect: true,
      ),
      Option(
        text:
            'É uma forma de guarda em que apenas um dos pais tem a responsabilidade e autoridade em relação à criação dos filhos, mesmo que eles morem juntos.',
        isCorrect: false,
      ),
      Option(
        text:
            'É uma forma de guarda em que os avós têm a responsabilidade e autoridade em relação à criação dos netos.',
        isCorrect: false,
      ),
      Option(
        text:
            'É uma forma de guarda em que os filhos são criados por pessoas que não são seus pais biológicos.',
        isCorrect: false,
      )
    ],
  ),
  Question(
    text: 'O que é o Cadastro Nacional de Adoção?',
    options: [
      Option(
        text:
            'É um sistema mantido pelo Poder Judiciário que centraliza informações sobre crianças e adolescentes disponíveis para adoção e sobre pessoas interessadas em adotar.',
        isCorrect: true,
      ),
      Option(
        text:
            'É um sistema mantido pelo Poder Executivo que centraliza informações sobre crianças e adolescentes em situação de risco, mas que não estão disponíveis para adoção.',
        isCorrect: false,
      ),
      Option(
        text:
            'É um sistema mantido pelo Poder Judiciário que centraliza informações sobre pessoas interessadas em adotar, mas que não inclui informações sobre crianças e adolescentes disponíveis para adoção.',
        isCorrect: false,
      ),
      Option(
        text:
            'É um sistema mantido pelo Poder Executivo que centraliza informações sobre pessoas interessadas em adotar, mas que não inclui informações sobre crianças e adolescentes disponíveis para adoção.',
        isCorrect: false,
      )
    ],
  ),
  Question(
    text: 'Qual é a importância da Lei Maria da Penha?',
    options: [
      Option(
        text:
            'Ela é uma lei que define medidas de proteção às mulheres vítimas de violência doméstica e familiar, incluindo a criação de juizados especializados e o aumento das penas para agressores.',
        isCorrect: true,
      ),
      Option(
        text:
            'Ela é uma lei que define medidas de proteção aos homens vítimas de violência doméstica e familiar, incluindo a criação de juizados especializados e o aumento das penas para agressoras.',
        isCorrect: false,
      ),
      Option(
        text:
            'Ela é uma lei internacional que define medidas de proteção às mulheres vítimas de violência doméstica e familiar, mas que não tem impacto na legislação Portuguesa.',
        isCorrect: false,
      ),
      Option(
        text:
            'Ela é uma lei que define medidas de proteção às crianças vítimas de violência doméstica e familiar, incluindo a criação de juizados especializados e o aumento das penas para agressores.',
        isCorrect: false,
      )
    ],
  ),
];

final questionQuizFour = [
  Question(
    text: 'O que é o feminicídio?',
    options: [
      Option(
        text: 'É o assassinato de uma mulher cometido por uma mulher.',
        isCorrect: false,
      ),
      Option(
        text:
            'É o assassinato de uma mulher cometido por um homem, mas que não tem relação com sua condição de mulher.',
        isCorrect: false,
      ),
      Option(
        text:
            'É o assassinato de uma mulher cometido em razão de sua condição de mulher, caracterizado pela violência doméstica ou familiar ou pelo menosprezo ou discriminação à condição de mulher.',
        isCorrect: true,
      ),
      Option(
        text:
            'É o assassinato de uma mulher por razões políticas ou ideológicas.',
        isCorrect: false,
      )
    ],
  ),
  Question(
    text: 'O que é o assédio sexual?',
    options: [
      Option(
        text:
            'É uma forma de violência contra as mulheres que consiste na insistência e na pressão, de forma verbal ou física, por parte de uma pessoa para obter favores sexuais, geralmente em situações em que há uma relação de hierarquia ou de poder entre as partes.',
        isCorrect: true,
      ),
      Option(
        text:
            'É uma forma de brincadeira entre amigos que consiste na troca de comentários de cunho sexual.',
        isCorrect: false,
      ),
      Option(
        text:
            'É uma forma de flerte entre duas pessoas que estão em um ambiente social.',
        isCorrect: false,
      ),
      Option(
        text:
            'É uma forma de demonstração de afeto entre um casal que consiste em toques e beijos sem consentimento explícito.',
        isCorrect: false,
      )
    ],
  ),
  Question(
    text: 'O que é a Lei Maria da Penha?',
    options: [
      Option(
        text:
            'É uma lei que proíbe as mulheres de trabalharem em determinadas áreas consideradas perigosas.',
        isCorrect: false,
      ),
      Option(
        text:
            'É uma lei que visa proteger as mulheres da violência doméstica e familiar, prevendo medidas de assistência e proteção às vítimas, bem como a punição aos agressores.',
        isCorrect: true,
      ),
      Option(
        text:
            'É uma lei que garante às mulheres o direito de receber salários iguais aos dos homens para a mesma função.',
        isCorrect: false,
      ),
      Option(
        text:
            'É uma lei que garante às mulheres o direito de votar e ser votada.',
        isCorrect: false,
      )
    ],
  ),
  Question(
    text: 'O que é a cultura do estupro?',
    options: [
      Option(
        text:
            'É uma cultura que normaliza a violência sexual contra as mulheres, culpando-as pela violência que sofrem e justificando o comportamento dos agressores.',
        isCorrect: true,
      ),
      Option(
        text:
            'É uma cultura que valoriza a liberdade sexual das mulheres, incentivando a prática de relações sexuais sem compromisso e sem responsabilidade.',
        isCorrect: false,
      ),
      Option(
        text:
            'É uma cultura que considera as mulheres inferiores aos homens, limitando suas oportunidades de educação e de trabalho.',
        isCorrect: false,
      ),
      Option(
        text:
            'É uma cultura que valoriza a virilidade dos homens, incentivando a prática de relações sexuais sem compromisso e sem responsabilidade.',
        isCorrect: false,
      )
    ],
  ),
  Question(
    text: 'O que é a igualdade de gênero?',
    options: [
      Option(
        text:
            'É o princípio segundo o qual homens e mulheres devem ter papéis diferentes na sociedade, de acordo com suas habilidades e características biológicas.',
        isCorrect: false,
      ),
      Option(
        text:
            'É o princípio segundo o qual homens e mulheres devem ter os mesmos direitos e oportunidades em todas as esferas da vida, sem discriminação baseada no gênero.',
        isCorrect: true,
      ),
      Option(
        text:
            'É o princípio segundo o qual homens e mulheres devem ter direitos diferentes, de acordo com suas habilidades e características biológicas.',
        isCorrect: false,
      ),
      Option(
        text:
            'É o princípio segundo o qual as mulheres devem ter direitos e oportunidades superiores aos dos homens, como forma de compensar séculos de opressão patriarcal.',
        isCorrect: false,
      )
    ],
  ),
];

final questionQuizFive = [
  Question(
    text: 'O que é o Estatuto do Idoso?',
    options: [
      Option(
        text:
            'É uma lei que estabelece direitos e garantias às pessoas com idade igual ou superior a 60 anos.',
        isCorrect: true,
      ),
      Option(
        text:
            'É uma lei que estabelece a obrigatoriedade do trabalho para as pessoas com idade igual ou superior a 60 anos.',
        isCorrect: false,
      ),
      Option(
        text:
            'É uma lei que proíbe as pessoas com idade igual ou superior a 60 anos de trabalharem em determinadas áreas consideradas perigosas.',
        isCorrect: false,
      ),
      Option(
        text:
            'É uma lei que garante às pessoas com idade igual ou superior a 60 anos o direito de votar e ser votado.',
        isCorrect: false,
      )
    ],
  ),
  Question(
    text: 'O que são os direitos da personalidade?',
    options: [
      Option(
        text:
            'São direitos que visam garantir a propriedade, a herança e a posse dos bens das pessoas idosas.',
        isCorrect: false,
      ),
      Option(
        text:
            'São direitos que visam garantir a participação política e social das pessoas idosas, como o direito de votar e ser votado.',
        isCorrect: false,
      ),
      Option(
        text:
            'São direitos que visam garantir a dignidade, a liberdade, a integridade física e psicológica das pessoas idosas, como o direito à vida, à privacidade, à intimidade, à imagem, à honra e ao nome.',
        isCorrect: true,
      ),
      Option(
        text:
            'São direitos que visam garantir o acesso aos serviços de saúde, educação, transporte e lazer das pessoas idosas.',
        isCorrect: false,
      )
    ],
  ),
  Question(
    text: 'O que é a tutela da pessoa idosa?',
    options: [
      Option(
        text:
            'É uma medida protetiva que pode ser determinada pela justiça para garantir a proteção dos direitos da pessoa idosa em situação de vulnerabilidade.',
        isCorrect: true,
      ),
      Option(
        text:
            'É uma medida que obriga as pessoas idosas a viverem em instituições especializadas, afastando-as de suas famílias e comunidades.',
        isCorrect: false,
      ),
      Option(
        text:
            'É uma medida que limita os direitos das pessoas idosas em relação à propriedade e à administração de seus bens.',
        isCorrect: false,
      ),
      Option(
        text:
            'É uma medida que restringe o acesso das pessoas idosas aos serviços de saúde e assistência social.',
        isCorrect: false,
      )
    ],
  ),
  Question(
    text: 'O que é o direito à moradia adequada das pessoas idosas?',
    options: [
      Option(
        text:
            'É um direito que visa garantir às pessoas idosas o direito a uma moradia digna, segura e acessível, que atenda às suas necessidades e condições físicas e financeiras.',
        isCorrect: true,
      ),
      Option(
        text:
            'É um direito que visa garantir às pessoas idosas o direito a uma moradia exclusiva para idosos, que os isole do convívio com outras pessoas e comunidades.',
        isCorrect: false,
      ),
      Option(
        text:
            'É um direito que visa garantir às pessoas idosas o direito a uma moradia luxuosa, com serviços de alto padrão e equipamentos de última geração.',
        isCorrect: false,
      ),
      Option(
        text:
            'É um direito que visa garantir às pessoas idosas o direito a uma moradia em qualquer condição, independentemente de suas necessidades e condições físicas e financeiras.',
        isCorrect: false,
      )
    ],
  ),
  Question(
    text: 'O que é a violência contra a pessoa idosa?',
    options: [
      Option(
        text:
            'É uma prática comum em que as pessoas idosas são colocadas em situações de risco ou perigo em benefício de outras pessoas ou instituições.',
        isCorrect: false,
      ),
      Option(
        text:
            'É uma prática legal em que as pessoas idosas são obrigadas a ceder seus bens e propriedades em benefício de outras pessoas ou instituições.',
        isCorrect: false,
      ),
      Option(
        text:
            'É uma prática comum em que as pessoas idosas são impedidas de participar de atividades sociais e culturais em benefício de outras pessoas ou instituições.',
        isCorrect: false,
      ),
      Option(
        text:
            'É qualquer ação ou omissão que cause danos físicos, psicológicos, sexuais, patrimoniais ou morais a uma pessoa idosa, seja em âmbito doméstico, institucional ou social.',
        isCorrect: true,
      ),
    ],
  ),
];
