import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
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

  bool quiz1 = false,
      quiz2 = false,
      quiz3 = false,
      quiz4 = false,
      quiz5 = false;

  @override
  void initState() {
    super.initState();
    getInfoAboutQuizIsCompleted();
  }

  Future<void> getInfoAboutQuizIsCompleted() async {
    DocumentReference docRef =
        FirebaseFirestore.instance.collection('utils').doc(user!.email);

    DocumentSnapshot docSnapshot = await docRef.get();

    setState(() {
      quiz1 = docSnapshot.get('quiz1');
      quiz2 = docSnapshot.get('quiz2');
      quiz3 = docSnapshot.get('quiz3');
      quiz4 = docSnapshot.get('quiz4');
      quiz5 = docSnapshot.get('quiz5');
    });
  }

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
                          InkWell(
                            onTap: () {
                              handleQuizResult(
                                context,
                                quiz1,
                                AppRoutes.pageQuiz1,
                              );
                            },
                            child: QuestionCard(
                              image: 'assets/images/liberdade.png',
                              titleText: 'Direitos civis e liberdades',
                              description:
                                  'Liberdade de expressão, direito à igualdade perante a lei, direito de voto, o direito à privacidade...',
                              isCompleted: quiz1,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              handleQuizResult(
                                context,
                                quiz2,
                                AppRoutes.pageQuiz2,
                              );
                            },
                            child: QuestionCard(
                              image: 'assets/images/igualdade.png',
                              titleText:
                                  'Direitos econômicos, sociais e culturais',
                              description:
                                  'Direito à alimentação, à educação, à saúde, ao trabalho, à moradia, ao lazer e ao acesso à cultura...',
                              isCompleted: quiz2,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              handleQuizResult(
                                context,
                                quiz3,
                                AppRoutes.pageQuiz3,
                              );
                            },
                            child: QuestionCard(
                              image: 'assets/images/familia.png',
                              titleText: 'Direitos de família e crianças',
                              description:
                                  'O direito à convivência familiar e à proteção da família, o direito à igualdade entre os membros da família...',
                              isCompleted: quiz3,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              handleQuizResult(
                                context,
                                quiz4,
                                AppRoutes.pageQuiz4,
                              );
                            },
                            child: QuestionCard(
                              image: 'assets/images/ativista.png',
                              titleText: 'Direitos das mulheres',
                              description:
                                  'o direito à igualdade de oportunidades e tratamento, o direito à não discriminação...',
                              isCompleted: quiz4,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              handleQuizResult(
                                context,
                                quiz5,
                                AppRoutes.pageQuiz5,
                              );
                            },
                            child: QuestionCard(
                              image: 'assets/images/direitosIdosos.png',
                              titleText: 'Direitos das pessoas idosas',
                              description:
                                  'liberdade de expressão, direito à igualdade perante a lei, direito de voto, o direito à privacidade...',
                              isCompleted: quiz5,
                            ),
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
    required bool isCompleted,
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
                  child: isCompleted
                      ? const Icon(
                          Icons.check_rounded,
                          color: Colors.white,
                        )
                      : const Icon(
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

  handleQuizResult(
      BuildContext context, bool quizCompleted, String routeName) async {
    if (quizCompleted) {
      final completer = Completer<void>();
      showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          Timer(const Duration(seconds: 2), () {
            if (!completer.isCompleted) {
              completer.complete();
              Navigator.of(context).pop();
            }
          });
          return WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              title: const Text('Quiz Concluído'),
              content: LottieBuilder.asset(
                "assets/lottie/green-check.json",
                width: 200,
                repeat: false,
              ),
            ),
          );
        },
      );

      await completer.future;
    } else {
      Navigator.of(context).pushNamed(routeName);
    }
  }
}
