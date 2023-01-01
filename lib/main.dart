import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:login_app_firebase/auth/main_page.dart';
import 'package:login_app_firebase/pages/goals_page.dart';
import 'package:login_app_firebase/pages/home_page.dart';
import 'package:login_app_firebase/pages/home_page_test.dart';
import 'package:login_app_firebase/pages/leaderboard_page.dart';
import 'package:login_app_firebase/pages/quiz_page.dart';
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
        AppRoutes.mainPage: (ctx) => const MainPage(),
        AppRoutes.homePage: (ctx) => const HomePage(),
        AppRoutes.quizPage: (ctx) => const QuizPage(),
        AppRoutes.goalsPage: (ctx) => const GoalsPage(),
        AppRoutes.leaderBoardPage: (ctx) => const LeaderBoardPage(),
      },
    );
  }
}