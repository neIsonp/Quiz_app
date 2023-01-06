import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../utils/app_routes.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.green],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: const [
                          Icon(Icons.person, color: Colors.white),
                          SizedBox(width: 4),
                          Text(
                            'Olá Jogador!',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        'Esta na hora de ganhar pontos!',
                        style: GoogleFonts.aBeeZee().copyWith(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 217, 238, 255),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        children: [
                          QuestionCard(
                            image: 'assets/images/brain.png',
                            titleText: 'Direitos civis e liberdades',
                            description:
                                'liberdade de expressão, direito à igualdade perante a lei, direito de voto, o direito à privacidade...',
                          ),
                          QuestionCard(
                            image: 'assets/images/brain.png',
                            titleText: 'Direitos civis e liberdades',
                            description:
                                'liberdade de expressão, direito à igualdade perante a lei, direito de voto, o direito à privacidade...',
                          ),
                          QuestionCard(
                            image: 'assets/images/brain.png',
                            titleText: 'Direitos civis e liberdades',
                            description:
                                'liberdade de expressão, direito à igualdade perante a lei, direito de voto, o direito à privacidade...',
                          ),
                          QuestionCard(
                            image: 'assets/images/brain.png',
                            titleText: 'Direitos civis e liberdades',
                            description:
                                'liberdade de expressão, direito à igualdade perante a lei, direito de voto, o direito à privacidade...',
                          ),
                          QuestionCard(
                            image: 'assets/images/brain.png',
                            titleText: 'Direitos civis e liberdades',
                            description:
                                'liberdade de expressão, direito à igualdade perante a lei, direito de voto, o direito à privacidade...',
                          ),
                          QuestionCard(
                            image: 'assets/images/brain.png',
                            titleText: 'Direitos civis e liberdades',
                            description:
                                'liberdade de expressão, direito à igualdade perante a lei, direito de voto, o direito à privacidade...',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  Widget QuestionCard({
    required String image,
    required String titleText,
    required String description,
  }) {
    const double _padding = 10.0;
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(_padding),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Flex(
              direction: Axis.vertical,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: ColoredBox(
                        color: Colors.blue.withOpacity(0.2),
                        child: SizedBox(
                          width: 60,
                          height: 60,
                          child: Image.asset(image),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titleText,
                            style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 15),
                            child: Text(
                              description,
                            ),
                          ),
                          Row(
                            children: [
                              AppIconText(
                                const Icon(
                                  Icons.help_outline_sharp,
                                  color: Colors.blue,
                                ),
                                '5 perguntas',
                              ),
                              const SizedBox(width: 15),
                              AppIconText(
                                const Icon(
                                  Icons.timer,
                                  color: Colors.blue,
                                ),
                                '5 minutos',
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Positioned(
              bottom: -_padding,
              right: -_padding,
              child: GestureDetector(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: const Icon(
                    Icons.navigate_next_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget AppIconText(Icon icon, String text) {
    return Row(
      children: [
        icon,
        const SizedBox(width: 4),
        Text(
          text,
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
