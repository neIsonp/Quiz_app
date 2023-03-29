import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app_firebase/models/question_model.dart';

import '../../data/dummy_data.dart';
import '../pages/result_page.dart';

class QuizComponent extends StatelessWidget {
  final quizList;
  final String title;
  const QuizComponent({super.key, required this.quizList, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$title"),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.green],
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: QuestionWidget(quizList: quizList),
      ),
    );
  }
}

class QuestionWidget extends StatefulWidget {
  final quizList;
  const QuestionWidget({super.key, required this.quizList});

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  late PageController _controller;
  int _questionNumber = 1;
  int _score = 0;
  bool _isLocked = false;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Perguntas $_questionNumber/${widget.quizList.length}',
              style: GoogleFonts.robotoSlab().copyWith(fontSize: 20),
            ),
            const Divider(color: Colors.black),
            Expanded(
              child: PageView.builder(
                itemCount: widget.quizList.length,
                controller: _controller,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final _question = widget.quizList[index];
                  return buildQuestion(_question);
                },
              ),
            ),
            const SizedBox(height: 20),
            _isLocked ? buildElevatedButton() : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }

  Widget buildQuestion(Question question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        Text(
          question.text,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        const SizedBox(height: 32),
        Expanded(
          child: OptionsWidget(
            question: question,
            onClikedOption: (option) {
              if (question.isLocked) {
                return;
              } else {
                setState(() {
                  question.isLocked = true;
                  question.selectedOption = option;
                });
                _isLocked = question.isLocked;
                if (question.selectedOption!.isCorrect) {
                  _score++;
                }
              }
            },
          ),
        ),
      ],
    );
  }

  buildElevatedButton() {
    return ElevatedButton(
      onPressed: () {
        if (_questionNumber < widget.quizList.length) {
          _controller.nextPage(
            duration: const Duration(microseconds: 250),
            curve: Curves.easeInExpo,
          );

          setState(() {
            _questionNumber++;
            _isLocked = false;
          });
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ResultPage(score: _score),
            ),
          );
        }
      },
      child: Text(
        _questionNumber < widget.quizList.length
            ? 'Proxima página'
            : 'ver resultados',
      ),
    );
  }
}

class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClikedOption;
  const OptionsWidget({
    super.key,
    required this.question,
    required this.onClikedOption,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: question.options
            .map((option) => buildOption(context, option!))
            .toList(),
      ),
    );
  }

  Widget buildOption(BuildContext context, Option option) {
    final color = question.selectedOption == option
        ? getColorForOption(option, question)
        : null;
    final icon = question.selectedOption == option
        ? getIconForOption(option, question)
        : null;
    return GestureDetector(
      onTap: () => onClikedOption(option),
      child: Container(
        height: 120,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color ?? Colors.transparent),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                option.text,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            icon ?? const Icon(Icons.abc, color: Colors.transparent),
          ],
        ),
      ),
    );
  }

  getColorForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if (isSelected) {
      return option.isCorrect ? Colors.green : Colors.red;
    } else if (option.isCorrect) {
      return Colors.green;
    }
    return Colors.grey.shade300;
  }

  getIconForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;

    if (isSelected) {
      return option.isCorrect
          ? const Icon(Icons.check_circle, color: Colors.green)
          : const Icon(Icons.cancel, color: Colors.red);
    } else if (option.isCorrect) {
      return const Icon(Icons.check_circle, color: Colors.green);
    }
    return const SizedBox.shrink();
  }
}
