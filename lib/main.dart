import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:login_app_firebase/auth/main_page.dart';
import 'package:login_app_firebase/pages/goals_page.dart';
import 'package:login_app_firebase/pages/home_page.dart';
import 'package:login_app_firebase/pages/leaderboard_page.dart';
import 'package:login_app_firebase/pages/quiz_page.dart';
import 'package:login_app_firebase/pages/quizes/quiz_five.dart';
import 'package:login_app_firebase/pages/quizes/quiz_four.dart';
import 'package:login_app_firebase/pages/quizes/quiz_one.dart';
import 'package:login_app_firebase/pages/quizes/quiz_three.dart';
import 'package:login_app_firebase/pages/quizes/quiz_two.dart';
import 'package:login_app_firebase/utils/app_routes.dart';
import 'pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        primarySwatch: Colors.green,
      ),
      routes: {
        AppRoutes.mainPage: (_) => const MainPage(),
        AppRoutes.homePage: (_) => const HomePage(),
        AppRoutes.quizPage: (_) => const QuizPage(),
        AppRoutes.goalsPage: (_) => const GoalsPage(),
        AppRoutes.leaderBoardPage: (_) => const LeaderBoardPage(),
        AppRoutes.pageQuiz1: (_) => const QuizOne(),
        AppRoutes.pageQuiz2: (_) => const QuizTwo(),
        AppRoutes.pageQuiz3: (_) => const QuizThree(),
        AppRoutes.pageQuiz4: (_) => const QuizFour(),
        AppRoutes.pageQuiz5: (_) => const QuizFive(),
      },
    );
  }
}
