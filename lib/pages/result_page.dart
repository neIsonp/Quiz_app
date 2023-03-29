import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class ResultPage extends StatelessWidget {
  final int score;

  const ResultPage({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LottieBuilder.asset(
              "assets/lottie/resultAnimationStar.json",
              width: 300,
              repeat: false,
            ),
            Text(
              "Ganhaste $score pontos!",
              style: GoogleFonts.poppins(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
